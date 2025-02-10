import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class OrderAddressCard extends StatelessWidget {
  const OrderAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.person_outline,
            color: Colors.black,
            size: 17,
          ),
          HorizontalSpace(18),
          Text(
            'Reo, +91 8921066518',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          GestureDetector(
            child: Text(
              'Change',
              style: TextStyle(
                color: Color(0xFF56BC5A),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
