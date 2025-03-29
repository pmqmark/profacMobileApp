import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:profac/application/categories_group/catrogies_group_bloc.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/domain/categories/model/category_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/mainmenu/widgets/categories_list_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoriesLists extends StatelessWidget {
  const CategoriesLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesGroupBloc, CategoriesGroupState>(
      builder: (context, state) {
        return state.whenOrNull(
              loading: () => _buildLoading(),
              loaded: (categoryModel) {
                return _buildSuccess(categoryModel);
              },
            ) ??
            SizedBox();
      },
    );
  }

  Widget _buildLoading() {
    return Skeletonizer(
      child: _buildSuccess(
        List.generate(
          2,
          (index) => CategoryGroupModel(
            id: 'id',
            name: 'nameeee',
            iconUrl: 'https://t3.ftcdn.net/jpg/03/45/05/92/360_F_345059232_CPieT8RIWOUk4JqBkkWkIETYAkmz2b75.jpg',
            categories: [
              CompactCategoryModel(
                  id: "id",
                  name: "nameeeee",
                  serviceCount: 2,
                  iconUrl: 'https://t3.ftcdn.net/jpg/03/45/05/92/360_F_345059232_CPieT8RIWOUk4JqBkkWkIETYAkmz2b75.jpg',
                  thumbnailUrl: 'https://t3.ftcdn.net/jpg/03/45/05/92/360_F_345059232_CPieT8RIWOUk4JqBkkWkIETYAkmz2b75.jpg'),
              CompactCategoryModel(
                  id: "id",
                  name: "nameeeee",
                  serviceCount: 3,
                  iconUrl: 'https://t3.ftcdn.net/jpg/03/45/05/92/360_F_345059232_CPieT8RIWOUk4JqBkkWkIETYAkmz2b75.jpg',
                  thumbnailUrl: 'https://t3.ftcdn.net/jpg/03/45/05/92/360_F_345059232_CPieT8RIWOUk4JqBkkWkIETYAkmz2b75.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  ListView _buildSuccess(List<CategoryGroupModel> categoryGroupModel) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CategoriesListWidget(
          title: categoryGroupModel[index].name,
          categories: categoryGroupModel[index].categories,
        );
      },
      separatorBuilder: (context, index) => VerticalSpace(10),
      itemCount: categoryGroupModel.length,
    );
  }
}
