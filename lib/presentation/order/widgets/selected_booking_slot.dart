import 'package:flutter/material.dart';
import 'package:profac/domain/checkout/models/slot_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/widgets/time_slot_choosing_sheet.dart';

class SelectedBookingSlot extends StatelessWidget {
  const SelectedBookingSlot({
    super.key,
    required this.bookingSlotNotifier,
  });
  final ValueNotifier<SlotModel?> bookingSlotNotifier;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bookingSlotNotifier,
        builder: (context, value, _) {
          if (value == null) {
            return SizedBox();
          }
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
                    Icons.watch_later_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  HorizontalSpace(10),
                  Expanded(
                    child: Text(
                      "${getDayOfWeek(value.date).substring(0, 3)}, ${getMonthName(value.date.month).substring(0, 3)} - ${value.time}",
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  HorizontalSpace(30),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.white,
                        showDragHandle: true,
                        context: context,
                        builder: (context) {
                          return TimeSlotChoosingSheet(
                            bookingSlot: bookingSlotNotifier,
                          );
                        },
                      );
                    },
                    icon:
                        Icon(Icons.edit_outlined, color: Colors.grey, size: 20),
                  )
                ],
              ),
            ),
          );
        });
  }
}
