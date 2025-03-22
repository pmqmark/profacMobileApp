import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/checkout/booking_available/booking_available_bloc.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/presentation/address/widgets/saved_address_bottom_sheet.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SelectedBookingAddress extends StatelessWidget {
  const SelectedBookingAddress({
    super.key,
    required this.bookingAddressNotifier,
    required this.categoryId,
  });
  final ValueNotifier<AddressModel?> bookingAddressNotifier;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bookingAddressNotifier,
        builder: (context, value, _) {
          if (value == null) {
            return SizedBox();
          }
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[400]!,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: BlocListener<AddressBloc, AddressState>(
                  listener: (context, state) {
                    state.mapOrNull(
                      loadedAddress: (value) {
                        bookingAddressNotifier.value = value.address;
                        log("address changed", name: "SelectedBookingAddress");
                        BlocProvider.of<BookingAvailableBloc>(context).add(
                            BookingAvailableEvent.checkAvailability(
                                categoryId: categoryId,
                                addressId: value.address.id));
                      },
                    );
                  },
                  child: Row(
                    children: [
                      HorizontalSpace(10),
                      Icon(
                        Icons.home_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      HorizontalSpace(10),
                      Text(
                        value.type,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.black),
                      ),
                      HorizontalSpace(8),
                      Expanded(
                        child: Text(
                          "${value.houseNumber}, ${value.shortName}",
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      HorizontalSpace(30),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            showDragHandle: true,
                            context: context,
                            builder: (context) {
                              return SavedAddressBottomSheet();
                            },
                          );
                        },
                        icon: Icon(Icons.edit_outlined,
                            color: Colors.grey, size: 20),
                      )
                    ],
                  )),
            ),
          );
        });
  }
}
