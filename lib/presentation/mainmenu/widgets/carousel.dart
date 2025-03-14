import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/banner/banner_bloc.dart';
import 'package:profac/domain/banners/model/banner_model.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<BannerBloc>(context).add(
        const BannerEvent.getBanner(),
      );
    });
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return const SizedBox();
          },
          loaded: (value) {
            final banners = value.banners;
            return _buildSuccess(banners);
          },
          error: (_) {
            return const SizedBox();
          },
        );
      },
    );
  }

  Widget _buildLoading() {
    return Skeletonizer(
        child: _buildSuccess(List.generate(
            1,
            (index) => BannerModel(
                  image: '',
                  id: "",
                  subtitle: "",
                  title: "",
                ))));
  }

  Stack _buildSuccess(List<BannerModel> banners) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        SizedBox(
          height: 142.h,
          child: PageView.builder(
            controller: controller,
            itemCount: banners.length,
            itemBuilder: (context, index) {
              final banner = banners[index];
              return AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  double value = 1.0;
                  if (controller.position.haveDimensions) {
                    value = controller.page! - index;
                    value = (1 - value.abs()).clamp(0.0, 1.0);
                  }
                  return Opacity(
                    opacity: value,
                    child: child,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(banner.image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: 17, bottom: 12),
          child: SmoothPageIndicator(
            controller: controller,
            count: banners.length,
            effect: WormEffect(
              dotWidth: 12.0,
              spacing: 4,
              dotHeight: 4.0,
              type: WormType.thin,
            ),
            onDotClicked: (index) {},
          ),
        ),
      ],
    );
  }
}
