import 'dart:ui';

import 'package:flutter/material.dart';

class BorderProgressIndicator extends StatefulWidget {
  final Widget child;
  final double strokeWidth;
  final Color progressColor;
  final Duration duration;
  final bool isLoading;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final bool monochromeWhileLoading;
  const BorderProgressIndicator({
    super.key,
    required this.child,
    this.strokeWidth = 2.0,
    this.progressColor = Colors.blue,
    this.duration = const Duration(seconds: 1),
    this.isLoading = true,
    this.monochromeWhileLoading = true,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  _BorderProgressIndicatorState createState() =>
      _BorderProgressIndicatorState();
}

class _BorderProgressIndicatorState extends State<BorderProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          // The child widget
          if (widget.monochromeWhileLoading && widget.isLoading)
            ColorFiltered(
              child: widget.child,
              colorFilter: ColorFilter.matrix(<double>[
                0.2126,
                0.7152,
                0.0722,
                0,
                0,
                0.2126,
                0.7152,
                0.0722,
                0,
                0,
                0.2126,
                0.7152,
                0.0722,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
              ]),
            )
          else
            widget.child,

          // The progress indicator
          if (widget.isLoading)
            Positioned.fill(
              child: IgnorePointer(
                child: ClipRRect(
                  borderRadius: widget.borderRadius ?? BorderRadius.zero,
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, _) {
                      return CustomPaint(
                        painter: BorderProgressPainter(
                          animation: _controller.value,
                          strokeWidth: widget.strokeWidth,
                          progressColor: widget.progressColor,
                          borderRadius: widget.borderRadius,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          if (widget.isLoading)
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(10),
                  borderRadius: widget.borderRadius ?? BorderRadius.zero,
                ),
              ),
            )
        ],
      ),
    );
  }
}

class BorderProgressPainter extends CustomPainter {
  final double animation;
  final double strokeWidth;
  final Color progressColor;
  final BorderRadius? borderRadius;

  BorderProgressPainter({
    required this.animation,
    required this.strokeWidth,
    required this.progressColor,
    this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final path = createRoundedRectPath(size);
    final pathMetric = path.computeMetrics().first;
    final totalLength = pathMetric.length;

    // Calculate dash length - 1/4 of the total path length
    final dashLength = totalLength / 4;

    // Current position based on animation value
    final startDistance = animation * totalLength;

    // Extract the segment of the path to draw
    final extractPath =
        extractPathSegment(pathMetric, startDistance, dashLength);

    canvas.drawPath(extractPath, paint);
  }

  Path createRoundedRectPath(Size size) {
    final rect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );

    final path = Path();

    if (borderRadius == null || borderRadius == BorderRadius.zero) {
      path.addRect(rect);
    } else {
      path.addRRect(RRect.fromRectAndCorners(
        rect,
        topLeft: borderRadius!.topLeft,
        topRight: borderRadius!.topRight,
        bottomLeft: borderRadius!.bottomLeft,
        bottomRight: borderRadius!.bottomRight,
      ));
    }

    return path;
  }

  Path extractPathSegment(
      PathMetric pathMetric, double startDistance, double dashLength) {
    // Handle wraparound if startDistance + dashLength > totalLength
    final totalLength = pathMetric.length;
    final endDistance = startDistance + dashLength;

    final extractPath = Path();

    if (endDistance <= totalLength) {
      // No wraparound needed
      extractPath.addPath(
        pathMetric.extractPath(startDistance, endDistance),
        Offset.zero,
      );
    } else {
      // Need to wrap around to the beginning of the path
      final firstSegment = pathMetric.extractPath(startDistance, totalLength);
      final secondSegment =
          pathMetric.extractPath(0, endDistance - totalLength);

      extractPath.addPath(firstSegment, Offset.zero);
      extractPath.addPath(secondSegment, Offset.zero);
    }

    return extractPath;
  }

  @override
  bool shouldRepaint(BorderProgressPainter oldDelegate) => true;
}
