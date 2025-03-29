import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/booking/detailed_booking/detailed_booking_bloc.dart';
import 'package:profac/domain/booking/model/booking_model.dart';

class CancelBookingAlertDialog extends StatelessWidget {
  const CancelBookingAlertDialog({
    super.key,
    required this.bookingId,
  });

  final String bookingId;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text("Cancel Booking"),
      content: Text("Are you sure you want to cancel this booking?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Go back",
              style: TextStyle(color: Theme.of(context).primaryColor)),
        ),
        TextButton(
          onPressed: () {
            BlocProvider.of<DetailedBookingBloc>(context).add(
                DetailedBookingEvent.cancelBooking(bookingId));
          },
          child: Text("Yes", style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
