import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';

class BookingItemCard extends StatelessWidget {
  const BookingItemCard({
    super.key,
  });
  List<Widget> subServices() {
    return List.generate(
      2,
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
                "Intensive cleaning (2 bathrooms) X 1",
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
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 34,
                child: Center(
                  child: Text(
                    "Ordered",
                    style: TextStyle(
                      color: Colors.black,
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
                        "Bathroom & Kitchen Cleaning",
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
                          Text("1 Service",
                              style: Theme.of(context).textTheme.titleMedium),
                          HorizontalSpace(16),
                          Icon(Icons.circle, size: 7),
                          HorizontalSpace(16),
                          Text("₹500",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            VerticalSpace(12),
            ...subServices(),
            VerticalSpace(12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.black12),
                  ),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderSummaryScreen(),
                    ),
                  );
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
