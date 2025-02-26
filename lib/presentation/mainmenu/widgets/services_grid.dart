import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/categories_group/catrogies_group_bloc.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ServicesGrid extends StatelessWidget {
  ServicesGrid({
    super.key,
  });
  final services = [
    {
      "icon": Icons.build_outlined,
      "title": "Appliance repair & service",
    },
    {
      "title": "Salon for women",
      "icon": Icons.face_retouching_natural_sharp,
    },
    {
      "title": "Bathroom & Kitchen Cleaning",
      "icon": Icons.cleaning_services,
    },
    {
      "title": "Electritions and Plumbers",
      "icon": Icons.electrical_services,
    },
  ];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<CategoriesGroupBloc>(context).add(
        const CategoriesGroupEvent.getCategoryGroups(),
      );
    });
    return BlocBuilder<CategoriesGroupBloc, CategoriesGroupState>(
      builder: (context, state) {
        return state.whenOrNull(
              loading: () => _buildLoadingGrid(context),
              loaded: (categoryModel) {
                return _buildSuccessGrid(categoryModel, context);
              },
            ) ??
            SizedBox();
      },
    );
  }

  Widget _buildLoadingGrid(context) {
    return Skeletonizer(
      child: _buildSuccessGrid(
          List.generate(
            4,
            (index) => CategoryGroupModel(
              name: "Demo name",
              id: "sdfd",
              categories: [],
            ),
          ),
          context),
    );
  }

  GridView _buildSuccessGrid(
      List<CategoryGroupModel> categoryModel, BuildContext context) {
    return GridView(
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 20),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 157 / 47,
      ),
      children: List.generate(
        categoryModel.length > 44 ? 4 : categoryModel.length,
        (index) {
          return InkWell(
            onTap: () {
              // Handle tap action
            },
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Material(
              color:
                  Colors.transparent, // Ensure background remains transparent
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        services[index]["icon"] as IconData,
                        size: 20,
                      ),
                      HorizontalSpace(10),
                      Expanded(
                        child: Text(
                          categoryModel[index].name,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
