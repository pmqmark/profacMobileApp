import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/category_detailed/category_detailed_bloc.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/mainmenu/see_all_categories_screen.dart';
import 'package:profac/presentation/service/services_list_screen.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    super.key,
    required this.categories,
    required this.title,
  });
  final String title;
  final List<CompactCategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            HorizontalSpace(24),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SeeAllCategoriesScreen(
                      categories: categories,
                      title: title,
                    ),
                  ),
                );
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
          height: 131,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              categories.length + 1,
              (index) {
                if (index == 0) {
                  return HorizontalSpace(24);
                }
                final category = categories[index - 1];
                return Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ServicesListScreen(
                            categoryID: category.id,
                            categoryName: category.name,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 199,
                      padding: EdgeInsets.only(right: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                          image: NetworkImage(
                            category.thumbnailUrl,
                            
                          ),
                          fit: BoxFit.cover,
                          
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Stack(
                          children: [
                            Text(category.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    )).frosted(
                              frostColor: const Color.fromARGB(31, 80, 80, 80),
                              frostOpacity: 0,
                              blur: 10,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
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
