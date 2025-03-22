import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/checkout/booking_slots/booking_slots_bloc.dart';
import 'package:profac/domain/checkout/models/slot_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';

class TimeSlotChoosingSheet extends StatelessWidget {
  TimeSlotChoosingSheet({super.key, required this.bookingSlot}) {
    _bookingSlot.value = bookingSlot.value;
  }
  final ValueNotifier<int> selectedDateIndex = ValueNotifier(0);
  final ValueNotifier<SlotModel?> bookingSlot;
  final ValueNotifier<SlotModel?> _bookingSlot = ValueNotifier(null);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: BlocBuilder<BookingSlotsBloc, BookingSlotsState>(
        builder: (context, state) {
          return Column(
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
                          child: ValueListenableBuilder(
                              valueListenable: selectedDateIndex,
                              builder: (context, value, _) {
                                return ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () =>
                                            selectedDateIndex.value = index,
                                        child: _DateCard(
                                          isSelected: value == index,
                                          date: state.bookingSlots[index].date,
                                          day: state.bookingSlots[index].day,
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return HorizontalSpace(10);
                                    },
                                    itemCount: state.bookingSlots.length);
                              }),
                        ),
                      ),
                    ),
                    VerticalSpace(30),
                    Text(
                      "Select your slot",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    VerticalSpace(15),
                    ValueListenableBuilder(
                        valueListenable: selectedDateIndex,
                        builder: (context, value, _) {
                          return ValueListenableBuilder(
                            valueListenable: _bookingSlot,
                            builder: (context, slot, _) {
                              return Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: List.generate(
                                  state.bookingSlots[value].slots.length,
                                  (index) {
                                    return _TimeCard(
                                      slotModel: state
                                          .bookingSlots[value].slots[index],
                                      isSelected: slot != null &&
                                          slot.id ==
                                              state.bookingSlots[value]
                                                  .slots[index].id,
                                      bookingSlot: _bookingSlot,
                                      active: state.bookingSlots[value]
                                              .slots[index].status ==
                                          "available",
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        }),
                    VerticalSpace(30),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BottomSaveButton(
                    onPressed: () {
                      bookingSlot.value = _bookingSlot.value;
                      Navigator.of(context).pop();
                    },
                    text: "Save and continue"),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _TimeCard extends StatelessWidget {
  const _TimeCard(
      {required this.slotModel,
      required this.isSelected,
      required this.bookingSlot,
      required this.active});
  final SlotModel slotModel;
  final bool isSelected;
  final ValueNotifier<SlotModel?> bookingSlot;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!active) return;
        bookingSlot.value = slotModel;
        bookingSlot.notifyListeners();
      },
      child: SizedBox(
        width: 75.dg,
        height: 33.dg,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
                color: !active
                    ? Colors.grey[400]!
                    : isSelected
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withAlpha(60)),
            color: !active
                ? Colors.grey[400]
                : isSelected
                    ? Theme.of(context).primaryColor.withAlpha(30)
                    : Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            child: Text(
              slotModel.time,
              style: TextStyle(color: Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}

class _DateCard extends StatelessWidget {
  const _DateCard(
      {required this.date, required this.day, required this.isSelected});
  final DateTime date;
  final String day;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day.substring(0, 3),
              style: TextStyle(color: Colors.black87),
            ),
            Text(date.day.toString()),
          ],
        ),
      ),
    );
  }
}
