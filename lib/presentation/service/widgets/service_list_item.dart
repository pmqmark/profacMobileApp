import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/service_screen.dart';
import 'package:profac/presentation/service/widgets/sub_service_sheet.dart';

class ServiceListItem extends StatelessWidget {
  const ServiceListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(15),
              Text(
                "Bath accessory installation",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              VerticalSpace(4),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 18),
                  HorizontalSpace(5),
                  Text(
                    "4.8 (4M bookings)",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              VerticalSpace(4),
              Row(
                children: [
                  Text(
                    "₹585",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  HorizontalSpace(5),
                  Icon(Icons.circle, size: 4, color: Colors.grey[400]),
                  HorizontalSpace(5),
                  Text(
                    "3hrs 20min",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ServiceScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "View details",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
              VerticalSpace(5)
            ],
          ),
        ),
        HorizontalSpace(35),
        Column(
          children: [
            VerticalSpace(40),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Transform.translate(
                  offset: Offset(0, -20),
                  child: Image.network(
                    "https://metropha.com/wp-content/uploads/2018/09/Metro-Plumbing-_-6-Characteristics-That-An-Emergency-Plumber-In-Chattanooga-TN-Must-Have.jpg",
                    width: 90,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SubServiceSheet(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      "Add",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                )
              ],
            ),
            VerticalSpace(5),
            Text('2 options', style: Theme.of(context).textTheme.labelSmall),
          ],
        )
      ],
    );
  }
}
