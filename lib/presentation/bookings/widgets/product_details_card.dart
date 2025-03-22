import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 26, right: 26, top: 22, bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Product details",
                style: Theme.of(context).textTheme.titleLarge),
            VerticalSpace(16),
            Row(
              children: [
                Icon(
                  Icons.list_alt_rounded,
                  color: Colors.black54,
                  size: 20,
                ),
                HorizontalSpace(10),
                Expanded(
                  child: Text(
                    "Total Amount: ₹1560",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xFF475467)),
                  ),
                ),
                HorizontalSpace(15)
              ],
            ),
            VerticalSpace(10),
            DottedLine(
              thickness: 1,
              color: Colors.black38,
            ),
            VerticalSpace(10),
            Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: Colors.black54,
                  size: 20,
                ),
                HorizontalSpace(12),
                Expanded(
                  child: Text(
                    "Ponekkara, Edapally, Kochi, Ernakulam, Kerala, 682024",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xFF475467)),
                  ),
                ),
                HorizontalSpace(15)
              ],
            ),
            VerticalSpace(10),
            DottedLine(
              thickness: 1,
              color: Colors.black38,
            ),
            VerticalSpace(10),
            Row(
              children: [
                Icon(
                  Icons.list_alt_rounded,
                  color: Colors.black54,
                  size: 20,
                ),
                HorizontalSpace(10),
                Expanded(
                  child: Text(
                    "Total Amount: ₹1560",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500, color: Color(0xFF475467)),
                  ),
                ),
                HorizontalSpace(15)
              ],
            ),
            VerticalSpace(15),
            SizedBox(
              width: 150,
              height: 35,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Colors.grey[300]!,
                  ),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "Cancel order",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromARGB(255, 192, 29, 48),
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DottedLine extends StatelessWidget {
  final double dashWidth;
  final double dashSpacing;
  final Color color;
  final double thickness;

  const DottedLine({
    Key? key,
    this.dashWidth = 4.0,
    this.dashSpacing = 4.0,
    this.color = Colors.black,
    this.thickness = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashPainter(
        dashWidth: dashWidth,
        dashSpacing: dashSpacing,
        color: color,
        thickness: thickness,
      ),
      size: Size(double.infinity, thickness),
    );
  }
}

class DashPainter extends CustomPainter {
  final double dashWidth;
  final double dashSpacing;
  final Color color;
  final double thickness;

  DashPainter({
    required this.dashWidth,
    required this.dashSpacing,
    required this.color,
    required this.thickness,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = thickness;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
