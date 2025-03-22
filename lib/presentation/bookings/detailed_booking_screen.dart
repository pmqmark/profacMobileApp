import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/bookings/widgets/product_details_card.dart';
import 'package:profac/presentation/bookings/widgets/service_in_this_order_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class DetailedBookingScreen extends StatelessWidget {
  const DetailedBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: BackButton(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("AC Service and Repair"),
            Text("Aug 23, 9:00 Am-9:00 PM",
                style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        actions: [
          SizedBox(
            width: 46,
            height: 31,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                side: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text("Help",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 12)),
            ),
          ),
          HorizontalSpace(15),
        ],
      ),
      body: ListView(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 26, right: 26, top: 15, bottom: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.list_alt_rounded,
                        color: Color.fromARGB(255, 115, 180, 133),
                      ),
                      HorizontalSpace(10),
                      Text(
                        "Your order is confirmed.",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  VerticalSpace(35),
                  Text(
                      "Preparing for dispatch. Delivery between Aug 23, 9:00 AM - 9:00 PM",
                      style: Theme.of(context).textTheme.titleLarge),
                  VerticalSpace(35),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFE2F6E2),
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 12),
                      child: Text(
                        "The service proffessional will arrive after the product is delivered.",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          VerticalSpace(6),
          ServiceInThisOrderCard(),
          VerticalSpace(6),
          ProductDetailsCard(),
          VerticalSpace(6),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 22),
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
  }
}
