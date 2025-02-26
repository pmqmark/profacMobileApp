import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';

class TimeSlotChoosingSheet extends StatelessWidget {
  const TimeSlotChoosingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text(
                  "When is the suitable time?",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                VerticalSpace(4),
                Text(
                  "Service take approx. 2hrs & 30 mins",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                VerticalSpace(15),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _DateCard();
                          },
                          separatorBuilder: (context, index) {
                            return HorizontalSpace(10);
                          },
                          itemCount: 7),
                    ),
                  ),
                ),
                VerticalSpace(30),
                Text(
                  "Morning",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                VerticalSpace(15),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    10,
                    (index) {
                      return _TimeCard();
                    },
                  ),
                ),
                VerticalSpace(20),
                Text(
                  "Evening",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                VerticalSpace(15),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    10,
                    (index) {
                      return _TimeCard();
                    },
                  ),
                ),
                VerticalSpace(30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BottomSaveButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: "Save and continue"),
          ),
        ],
      ),
    );
  }
}

class _TimeCard extends StatelessWidget {
  const _TimeCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.dg,
      height: 33.dg,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).primaryColor.withAlpha(60)),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Text(
            "8:00 am",
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class _DateCard extends StatelessWidget {
  const _DateCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sun",
              style: TextStyle(color: Colors.black87),
            ),
            Text("24"),
          ],
        ),
      ),
    );
  }
}
