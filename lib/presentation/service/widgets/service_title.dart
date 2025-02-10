import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ServiceTitle extends StatelessWidget {
  const ServiceTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                // Handle the button press
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            VerticalSpace(10),
            Text(
              'Full house cleaning',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            VerticalSpace(2),
            Row(
              children: [
                Text(
                  r'$584',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                HorizontalSpace(6),
                Icon(
                  Icons.circle,
                  color: Colors.black38,
                  size: 4,
                ),
                HorizontalSpace(6),
                Icon(
                  Icons.star,
                  color: Color(0xFFF2B90D),
                  size: 16,
                ),
                Text(
                  '4.5',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  '',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(120),
                  ),
                ),
              ),
          child: Text(
            'Book now',
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
