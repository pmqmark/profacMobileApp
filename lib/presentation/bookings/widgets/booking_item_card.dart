import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/booking/detailed_booking/detailed_booking_bloc.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/presentation/bookings/add_review_screen.dart';
import 'package:profac/presentation/bookings/detailed_booking_screen.dart';
import 'package:profac/presentation/bookings/widgets/cancel_booking_alert_dialog.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class BookingItemCard extends StatelessWidget {
  BookingItemCard({super.key, required this.bookingModel}) {
    statusText = bookingModel.status == BookingStatus.confirmed
        ? "Confirmed"
        : bookingModel.status == BookingStatus.completed
            ? "Service Fulfilled"
            : bookingModel.status == BookingStatus.cancelled
                ? "Cancelled"
                : "Pending";
    statusColor = bookingModel.status == BookingStatus.confirmed
        ? Color(0xFFBCD9FF)
        : bookingModel.status == BookingStatus.completed
            ? Color(0xFFE2F6E2)
            : bookingModel.status == BookingStatus.cancelled
                ? Color(0xffF6E2E2)
                : Color(0xFFFFF3E0);
    statusTextColor = bookingModel.status == BookingStatus.confirmed
        ? Color(0xFF0D009E)
        : bookingModel.status == BookingStatus.completed
            ? Color(0xFF2E7D32)
            : bookingModel.status == BookingStatus.cancelled
                ? Color(0xffC62828)
                : Color(0xFFFFA000);
  }
  final BookingModel bookingModel;
  String statusText = '';
  Color statusTextColor = Colors.black;
  Color statusColor = Colors.grey[100]!;
  List<Widget> subServices(List<BookingOption> bookingOptions) {
    return List.generate(
      bookingOptions.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.grey[300],
                size: 7,
              ),
              HorizontalSpace(8),
              Text(
                "${bookingOptions[index].name} X ${bookingOptions[index].quantity}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 34,
                child: Center(
                  child: Text(
                    statusText,
                    style: TextStyle(
                      color: statusTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            VerticalSpace(16),
            Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: Icon(
                      Icons.cleaning_services_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                HorizontalSpace(16),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        bookingModel.categoryName,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 20.sp,
                            ),
                        softWrap: true,
                      ),
                      VerticalSpace(8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "${bookingModel.options.length} Service${bookingModel.options.length > 1 ? 's' : ''}",
                              style: Theme.of(context).textTheme.titleMedium),
                          HorizontalSpace(16),
                          Icon(Icons.circle, size: 7),
                          HorizontalSpace(16),
                          Text("₹${bookingModel.amount}",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            VerticalSpace(12),
            ...subServices(bookingModel.options),
            VerticalSpace(12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.black87),
                  ),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailedBookingScreen(
                        bookingId: bookingModel.bookingId,
                        title: bookingModel.categoryName,
                        bookingModel: bookingModel,
                      ),
                    ),
                  );
                },
                child: Text(
                  "View More",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            if (bookingModel.status == BookingStatus.pending ||
                bookingModel.status == BookingStatus.confirmed)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0x4fff0000)),
                    ),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => CancelBookingAlertDialog(
                        bookingId: bookingModel.bookingId,
                      ),
                    );
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            if (bookingModel.status == BookingStatus.completed)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0xffFFCD50)),
                    ),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddReviewScreen(
                          bookingModel: bookingModel,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Add Review",
                    style: TextStyle(
                      color: Color(0xffE4A70A),
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
