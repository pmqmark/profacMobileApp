import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/application/checkout/booking_available/booking_available_bloc.dart';
import 'package:profac/application/checkout/booking_slots/booking_slots_bloc.dart';
import 'package:profac/application/checkout/checkout_order/checkout_order_bloc.dart';
import 'package:profac/application/checkout/coupons/coupons_bloc.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/cart/model/cart_reponse_model.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/domain/checkout/models/checkout_order_model.dart';
import 'package:profac/domain/checkout/models/slot_model.dart';
import 'package:profac/presentation/address/widgets/saved_address_bottom_sheet.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_success_screen.dart';
import 'package:profac/presentation/order/widgets/added_items_card.dart';
import 'package:profac/presentation/order/widgets/bill_card.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/order/widgets/frequently_added_card.dart';
import 'package:profac/presentation/order/widgets/order_address_card.dart';
import 'package:profac/presentation/order/widgets/savings_card.dart';
import 'package:profac/presentation/order/widgets/savings_corner.dart';
import 'package:profac/presentation/order/widgets/selected_booking_address.dart';
import 'package:profac/presentation/order/widgets/selected_booking_slot.dart';
import 'package:profac/presentation/order/widgets/service_item.dart';
import 'package:profac/presentation/order/widgets/tip_card.dart';
import 'package:profac/presentation/order/widgets/time_slot_choosing_sheet.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OrderSummaryScreen extends StatefulWidget {
  const OrderSummaryScreen(
      {super.key, required this.categoryId, required this.amount});
  final String categoryId;
  final double amount;
  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  late final AmountBodyModel amountBodyModel;
  final ValueNotifier<AddressModel?> bookingAddressNotifier =
      ValueNotifier(null);
  final ValueNotifier<SlotModel?> bookingslotNotifier = ValueNotifier(null);
  @override
  void initState() {
    amountBodyModel =
        AmountBodyModel(categoryId: widget.categoryId, couponCode: '', tip: 0);
    BlocProvider.of<CouponsBloc>(context).add(CouponsEvent.getCoupons());
    BlocProvider.of<BookingSlotsBloc>(context)
        .add(BookingSlotsEvent.getSlots(widget.categoryId));
    BlocProvider.of<BookingAmountBloc>(context)
        .add(BookingAmountEvent.initial(widget.amount));
    BlocProvider.of<AddressBloc>(context).state.mapOrNull(
      loadedAddress: (value) {
        bookingAddressNotifier.value = value.address;
        BlocProvider.of<BookingAvailableBloc>(context).add(
            BookingAvailableEvent.checkAvailability(
                categoryId: widget.categoryId, addressId: value.address.id));
      },
    );
    super.initState();
  }

  final TextEditingController receiverNameController = TextEditingController();
  final TextEditingController receiverMobileController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          return;
        }
        BlocProvider.of<CartItemsBloc>(context).add(CartItemsEvent.getCart());
        Navigator.pop(context);
      },
      child: BlocConsumer<CheckoutOrderBloc, CheckoutOrderState>(
        listener: (context, state) {
          state.mapOrNull(
            orderPlaced: (value) {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return OrderSuccessScreen(
                    address: value.model,
                  );
                },
              ));
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.grey[100],
                appBar: _appbar(context),
                body: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 17, left: 17),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            VerticalSpace(16),
                            SavingsCard(),
                            VerticalSpace(16),
                            ReceiverDetailsCard(
                              receiverNameController: receiverNameController,
                              receiverMobileController:
                                  receiverMobileController,
                            ),
                            VerticalSpace(16),
                            AddedItemsCard(categoryId: widget.categoryId),
                            VerticalSpace(16),
                            FrequentlyAddedCard(),
                            VerticalSpace(16),
                            SavingsCornerCard(
                              amountBodyModel: amountBodyModel,
                            ),
                            VerticalSpace(16),
                            BillCard(),
                            VerticalSpace(16),
                            TipCard(
                              amountBodyModel: amountBodyModel,
                            ),
                            VerticalSpace(30),
                          ],
                        ),
                      ),
                    ),
                    _bottomButtons()
                  ],
                ),
              ),
              state.maybeMap(
                orElse: () {
                  return SizedBox();
                },
                loading: (value) => SizedBox.expand(
                  child: ColoredBox(
                    color: Colors.black38,
                    child: Center(
                      child: ProfacLoadingIndicator(),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  SizedBox _bottomButtons() {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey[400]!,
            ),
          ),
        ),
        child: Column(
          children: [
            SelectedBookingAddress(
              bookingAddressNotifier: bookingAddressNotifier,
              categoryId: widget.categoryId,
            ),
            SelectedBookingSlot(
              bookingSlotNotifier: bookingslotNotifier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
              child: ValueListenableBuilder(
                  valueListenable: bookingAddressNotifier,
                  builder: (context, e, _) {
                    return ValueListenableBuilder(
                        valueListenable: bookingslotNotifier,
                        builder: (context, e, _) {
                          return BlocBuilder<BookingAvailableBloc,
                              BookingAvailableState>(
                            builder: (context, state) {
                              return BottomSaveButton(
                                color: state.maybeMap(
                                  orElse: () {
                                    return Colors.grey[400];
                                  },
                                  loaded: (value) {
                                    return value.isAvailable
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey[400];
                                  },
                                ),
                                onPressed: () async {
                                  if (bookingAddressNotifier.value == null) {
                                    await showModalBottomSheet(
                                      backgroundColor: Colors.white,
                                      showDragHandle: true,
                                      context: context,
                                      builder: (context) {
                                        return SavedAddressBottomSheet();
                                      },
                                    );
                                  }
                                  if (bookingslotNotifier.value == null) {
                                    await showModalBottomSheet(
                                      backgroundColor: Colors.white,
                                      showDragHandle: true,
                                      context: context,
                                      builder: (context) {
                                        return TimeSlotChoosingSheet(
                                          bookingSlot: bookingslotNotifier,
                                        );
                                      },
                                    );
                                    return;
                                  }
                                  CheckoutOrderModel model = CheckoutOrderModel(
                                    addressId: bookingAddressNotifier.value!.id,
                                    slotId: bookingslotNotifier.value!.id,
                                    categoryId: widget.categoryId,
                                    couponCode: amountBodyModel.couponCode,
                                    tip: amountBodyModel.tip,
                                    payMethod: "COD",
                                  );
                                  BlocProvider.of<CheckoutOrderBloc>(context)
                                      .add(CheckoutOrderEvent.placeOrder(
                                          model: model,
                                          address:
                                              bookingAddressNotifier.value!));
                                },
                                text: bookingAddressNotifier.value == null
                                    ? "Select Address"
                                    : bookingslotNotifier.value == null
                                        ? "Select Time Slot"
                                        : "Book Now",
                              );
                            },
                          );
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          BlocProvider.of<CartItemsBloc>(context).add(CartItemsEvent.getCart());
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Summary'),
          VerticalSpace(3),
          BlocBuilder<BookingAmountBloc, BookingAmountState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Skeletonizer(
                    child: Text("Amount to pay: ₹100",
                        style: Theme.of(context).textTheme.bodyMedium));
              }
              if (state.failure == null) {
                return Text("Amount to pay: ₹${state.amount}",
                    style: Theme.of(context).textTheme.bodyMedium);
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}

class OrderTitle extends StatelessWidget {
  const OrderTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
