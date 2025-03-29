import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:profac/application/booking/detailed_booking/detailed_booking_bloc.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/presentation/bookings/widgets/order_current_statuses.dart';
import 'package:profac/presentation/bookings/widgets/product_details_card.dart';
import 'package:profac/presentation/bookings/widgets/service_in_this_order_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class DetailedBookingScreen extends StatefulWidget {
  const DetailedBookingScreen({
    super.key,
    required this.bookingId,
    required this.title,required this.bookingModel,
  });
  final String bookingId;
  final String title;
  final BookingModel bookingModel;
  @override
  State<DetailedBookingScreen> createState() => _DetailedBookingScreenState();
}

class _DetailedBookingScreenState extends State<DetailedBookingScreen> {
  @override
  void initState() {
    BlocProvider.of<DetailedBookingBloc>(context).add(
      DetailedBookingEvent.getDeailedBooking(widget.bookingId),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedBookingBloc, DetailedBookingState>(
      builder: (context, state) {
        if (state.isLoading || state.detailedBookingModel == null) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state.failure != null) {
          return Scaffold(
            body: Column(
              children: [
                Text("Something went wrong"),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<DetailedBookingBloc>(context).add(
                      DetailedBookingEvent.getDeailedBooking(widget.bookingId),
                    );
                  },
                  child: Text("Retry"),
                )
              ],
            ),
          );
        }
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            leading: BackButton(),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title),
                if (state.detailedBookingModel != null)
                  Text(
                    "${state.detailedBookingModel!.slot.date.day} "
                    "${DateFormat('MMM').format(state.detailedBookingModel!.slot.date)} "
                    "${state.detailedBookingModel!.slot.date.year} ${state.detailedBookingModel!.slot.time} ",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
              ],
            ),
          ),
          body: ListView(
            children: [
              OrderCurrentStatuses(
                status: state.detailedBookingModel!.status,
                createdAt: state.detailedBookingModel!.createdAt,
              ),
              VerticalSpace(6),
              ServiceInThisOrderCard(
                categoryName: state.detailedBookingModel!.categoryName,
                options: state.detailedBookingModel!.options,
              ),
              VerticalSpace(6),
              ProductDetailsCard(
                totalAmount: state.detailedBookingModel!.amount,
                address: state.detailedBookingModel!.address,
                bookingSlot: state.detailedBookingModel!.slot,
                bookingId: widget.bookingId,
                status: state.detailedBookingModel!.status,
                bookingModel: widget.bookingModel,
              ),
              VerticalSpace(6),
              if (state.detailedBookingModel!.status == BookingStatus.pending ||
                  state.detailedBookingModel!.status == BookingStatus.confirmed)
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cancellation Policy",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        VerticalSpace(13),
                        Text(
                          '''Cancellation is allowed only till the product is sent for delivery.''',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
