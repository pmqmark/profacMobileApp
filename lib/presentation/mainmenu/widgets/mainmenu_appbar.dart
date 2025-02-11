import 'package:flutter/material.dart';
import 'package:profac/presentation/cart/cart_screen.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/address/saved_address_bottom_sheet.dart';

class MainmenuAppbar extends StatelessWidget {
  const MainmenuAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return SavedAddressBottomSheet();
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .elevatedButtonTheme
                        .style
                        ?.backgroundColor
                        ?.resolve({WidgetState.selected}),
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.pin_drop_outlined,
                    size: 18,
                  ),
                ),
              ),
              HorizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Current location ▼',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    'Kolkata, West Bengal',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
        Badge(
          isLabelVisible: true,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
