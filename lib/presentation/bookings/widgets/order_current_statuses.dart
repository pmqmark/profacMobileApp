import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class OrderCurrentStatuses extends StatelessWidget {
  const OrderCurrentStatuses({
    super.key,
    required this.status,
    required this.createdAt,
  });
  final BookingStatus status;
  final DateTime createdAt;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 26, right: 26, top: 15, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (status == BookingStatus.cancelled)
              _showStatus(
                context,
                icon: Icons.cancel_outlined,
                text: "Cancelled",
                iconColor: Colors.red,
              ),
            if (status == BookingStatus.pending ||
                status == BookingStatus.confirmed)
              _showStatus(context,
                  icon: Icons.list_alt_rounded,
                  iconColor: Color.fromARGB(255, 115, 180, 133),
                  text: "Your order is confirmed."),
            if (status == BookingStatus.completed)
              _showStatus(context,
                  icon: Icons.check,
                  text: "Service Fulfilled",
                  iconColor: Color(0xFF000A9D),
                  textColor: Color(0xFF000A9D)),
            VerticalSpace(15),
            if (status == BookingStatus.cancelled) ...[
              Text(
                "Order was cancelled",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                textAlign: TextAlign.left,
              ),
              Text(
                "on ${createdAt.day} ${DateFormat('MMM').format(createdAt)} ${createdAt.year} at ${DateFormat.jm().format(createdAt)}",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
            ],
            // Text(
            //     "Preparing for dispatch. Delivery between Aug 23, 9:00 AM - 9:00 PM",
            //     style: Theme.of(context).textTheme.titleLarge),
            // VerticalSpace(35),
            if (status != BookingStatus.cancelled)
              DecoratedBox(
                decoration: BoxDecoration(
                  color: status == BookingStatus.completed
                      ? Color(0x0d12009B)
                      : Color(0xFFE2F6E2),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: status == BookingStatus.completed
                        ? Color(0xFF000A9D)
                        : Theme.of(context).primaryColor,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: Text(
                    status == BookingStatus.completed
                        ? "The service professional arrived and completed the service."
                        : "The service proffessional will arrive to fulflill your order.",
                    style: TextStyle(
                      color: status == BookingStatus.completed
                          ? Color(0xFF000A9D)
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Row _showStatus(BuildContext context,
      {required IconData icon,
      required String text,
      required Color iconColor,
      Color textColor = Colors.black}) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        HorizontalSpace(10),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
