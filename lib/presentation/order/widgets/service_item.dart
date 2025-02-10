import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ServiceItem extends StatelessWidget {
  ServiceItem({
    super.key,
  });
  final List<Map<String, ValueNotifier<int>>> quantityListeners = [
    {"quantity": ValueNotifier(1)},
    {"quantity": ValueNotifier(1)},
    {"quantity": ValueNotifier(1)},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "AC Repair",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Spacer(),
            QuantityCouter(quantityListener: quantityListeners[0]['quantity']!),
            HorizontalSpace(16),
            SizedBox(
              width: 40.w,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "₹2544",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
        VerticalSpace(8),
        ...List.generate((quantityListeners.length * 2) - 1, (index) {
          if (index.isOdd) {
            return VerticalSpace(8);
          }
          return SubServiceItem(
            quantityListener: quantityListeners[(index / 2).toInt()]
                ["quantity"]!,
          );
        }),
      ],
    );
  }
}

class SubServiceItem extends StatelessWidget {
  const SubServiceItem({
    super.key,
    required this.quantityListener,
  });

  final ValueNotifier<int> quantityListener;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.circle, color: Colors.grey[300], size: 9),
        HorizontalSpace(10),
        Text(
          "Less / no cooling",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Spacer(),
        QuantityCouter(quantityListener: quantityListener),
        HorizontalSpace(16),
        SizedBox(
          width: 40.w,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "₹2544",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}

class QuantityCouter extends StatelessWidget {
  const QuantityCouter({
    super.key,
    required this.quantityListener,
  });

  final ValueNotifier<int> quantityListener;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFE2F6E2),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Theme.of(context).primaryColor.withAlpha(64),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (quantityListener.value > 1) {
                      quantityListener.value--;
                    }
                  },
                  child: Icon(
                    Icons.remove,
                    size: 16,
                  ),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                    valueListenable: quantityListener,
                    builder: (context, quantity, child) {
                      return Text(
                        quantity.toString(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      );
                    }),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => quantityListener.value++,
                  child: Icon(
                    Icons.add,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
