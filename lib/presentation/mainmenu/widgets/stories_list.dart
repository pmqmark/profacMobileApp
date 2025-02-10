import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/mainmenu/widgets/story_carousel.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            HorizontalSpace(24),
            Text(
              'Stories',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                // Handle tap action
              },
              style: Theme.of(context).textButtonTheme.style!.copyWith(
                    padding: WidgetStateProperty.all(
                      EdgeInsets.zero,
                    ),
                  ),
              child: Text(
                'See all',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            HorizontalSpace(12),
          ],
        ),
        SizedBox(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) {
                if (index == 0) {
                  return HorizontalSpace(24);
                }
                return Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => StoriesCarousel(),
                        ),
                      );
                    },
                    child: SizedBox(
                        width: 132.w,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://maid-zen.com/wp-content/uploads/2021/03/maid-zen-cta-image.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
