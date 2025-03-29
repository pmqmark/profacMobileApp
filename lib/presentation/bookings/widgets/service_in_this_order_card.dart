import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ServiceInThisOrderCard extends StatelessWidget {
  const ServiceInThisOrderCard({
    super.key,
    required this.categoryName,
    required this.options,
  });
  final String categoryName;
  final List<BookingOption> options;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 26, right: 26, top: 22, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Services in this order",
                style: Theme.of(context).textTheme.titleLarge),
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
                  child: Text(
                    categoryName,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 20.sp,
                        ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            VerticalSpace(12),
            ...List.generate(
              options.length,
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
                        "${options[index].name} x ${options[index].quantity}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
