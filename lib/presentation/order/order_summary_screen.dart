import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/widgets/bill_card.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/order/widgets/frequently_added_card.dart';
import 'package:profac/presentation/order/widgets/order_address_card.dart';
import 'package:profac/presentation/order/widgets/savings_card.dart';
import 'package:profac/presentation/order/widgets/savings_corner.dart';
import 'package:profac/presentation/order/widgets/service_item.dart';
import 'package:profac/presentation/order/widgets/tip_card.dart';
import 'package:profac/presentation/order/widgets/time_slot_choosing_sheet.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Summary'),
            VerticalSpace(3),
            Text("Amount to pay: ₹100",
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 17, left: 17),
              child: ListView(
                shrinkWrap: true,
                children: [
                  VerticalSpace(16),
                  SavingsCard(),
                  VerticalSpace(16),
                  OrderAddressCard(),
                  VerticalSpace(16),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrderTitle(
                            title: "Added items",
                          ),
                          VerticalSpace(14),
                          ...List.generate(1, (index) {
                            if (index.isOdd) {
                              return VerticalSpace(8);
                            }
                            return ServiceItem();
                          })
                        ],
                      ),
                    ),
                  ),
                  VerticalSpace(16),
                  FrequentlyAddedCard(),
                  VerticalSpace(16),
                  SavingsCornerCard(),
                  VerticalSpace(16),
                  BillCard(),
                  VerticalSpace(16),
                  TipCard(),
                  VerticalSpace(30),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey[400]!,
                  ),
                ),
              ),
              child: Column(
                children: [
                  SelectedSlotAdress(),
                  SelectedSlotAdress(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
                    child: BottomSaveButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return TimeSlotChoosingSheet();
                          },
                        );
                      },
                      text: "Select Address",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SelectedSlotAdress extends StatelessWidget {
  const SelectedSlotAdress({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
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
              "Home",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.black),
            ),
            HorizontalSpace(8),
            Expanded(
              child: Text(
                "Ponekkara, Edapally, Kochi, Ernakulam",
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            HorizontalSpace(30),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit_outlined, color: Colors.grey, size: 20),
            )
          ],
        ),
      ),
    );
  }
}

class OrderTitle extends StatelessWidget {
  const OrderTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
