import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.height, {super.key});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.width, {super.key});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class ProfacLoadingIndicator extends StatelessWidget {
  const ProfacLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.dotsTriangle(
      color: Color(0xFFE2F6E2),
      size: 50,
    );
  }
}
