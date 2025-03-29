import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/domain/booking/model/detailed_booking_model.dart';
import 'package:profac/presentation/bookings/add_review_screen.dart';
import 'package:profac/presentation/bookings/widgets/cancel_booking_alert_dialog.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    super.key,
    required this.bookingSlot,
    required this.totalAmount,
    required this.address,
    required this.bookingId,
    required this.status, required this.bookingModel,
  });
  final BookingModel bookingModel;
  final BookingSlot bookingSlot;
  final double totalAmount;
  final BookingAddress address;
  final String bookingId;
  final BookingStatus status;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 26, right: 26, top: 22, bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product details",
                style: Theme.of(context).textTheme.titleLarge),
            VerticalSpace(16),
            Row(
              children: [
                Icon(
                  Icons.list_alt_rounded,
                  color: Colors.black54,
                  size: 20,
                ),
                HorizontalSpace(10),
                Expanded(
                  child: Text(
                    "Total Amount: ₹$totalAmount",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xFF475467)),
                  ),
                ),
                HorizontalSpace(15)
              ],
            ),
            VerticalSpace(10),
            DottedLine(
              thickness: 1,
              color: Colors.black38,
            ),
            VerticalSpace(10),
            Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: Colors.black54,
                  size: 20,
                ),
                HorizontalSpace(12),
                Expanded(
                  child: Text(
                    "${address.shortName}, ${address.formattedAddress}",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xFF475467)),
                  ),
                ),
                HorizontalSpace(15)
              ],
            ),
            VerticalSpace(10),
            DottedLine(
              thickness: 1,
              color: Colors.black38,
            ),
            VerticalSpace(10),
            Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.black54,
                  size: 20,
                ),
                HorizontalSpace(10),
                Expanded(
                  child: Text(
                    "${bookingSlot.date.day} "
                    "${DateFormat('MMM').format(bookingSlot.date)} "
                    "${bookingSlot.date.year} ${bookingSlot.time} ",
                  ),
                ),
                HorizontalSpace(15)
              ],
            ),
            VerticalSpace(15),
            if (status == BookingStatus.pending ||
                status == BookingStatus.confirmed)
              _cancelOrderButton(context),
            if (status == BookingStatus.completed) _addReviewButton(context)
          ],
        ),
      ),
    );
  }

  SizedBox _addReviewButton(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 35,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddReviewScreen(
                bookingModel: bookingModel ,
              ),
            ),
          );
        },
        style: TextButton.styleFrom(
          side: BorderSide(
            color: Colors.grey[300]!,
          ),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          "Add feedback",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Color(0xffE4A70A),
              ),
        ),
      ),
    );
  }

  SizedBox _cancelOrderButton(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 35,
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => CancelBookingAlertDialog(
              bookingId: bookingId,
            ),
          );
        },
        style: TextButton.styleFrom(
          side: BorderSide(
            color: Colors.grey[300]!,
          ),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          "Cancel order",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Color.fromARGB(255, 192, 29, 48),
              ),
        ),
      ),
    );
  }
}

class DottedLine extends StatelessWidget {
  final double dashWidth;
  final double dashSpacing;
  final Color color;
  final double thickness;

  const DottedLine({
    Key? key,
    this.dashWidth = 4.0,
    this.dashSpacing = 4.0,
    this.color = Colors.black,
    this.thickness = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashPainter(
        dashWidth: dashWidth,
        dashSpacing: dashSpacing,
        color: color,
        thickness: thickness,
      ),
      size: Size(double.infinity, thickness),
    );
  }
}

class DashPainter extends CustomPainter {
  final double dashWidth;
  final double dashSpacing;
  final Color color;
  final double thickness;

  DashPainter({
    required this.dashWidth,
    required this.dashSpacing,
    required this.color,
    required this.thickness,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = thickness;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
