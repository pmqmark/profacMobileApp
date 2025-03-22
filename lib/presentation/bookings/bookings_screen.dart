import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profac/presentation/bookings/widgets/booking_item_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Your Bookings'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '22nd May, 2024',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              VerticalSpace(16),
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return BookingItemCard(
                    status: BookingStatus.values[index % 3],
                  );
                },
                separatorBuilder: (context, index) => VerticalSpace(16),
                itemCount: 3,
              ),
            ],
          );
        },
      ),
    );
  }
}
