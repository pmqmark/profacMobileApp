import 'package:flutter/material.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/services_list_screen.dart';

class SeeAllCategoriesScreen extends StatelessWidget {
  const SeeAllCategoriesScreen(
      {super.key, required this.categories, required this.title});
  final List<CompactCategoryModel> categories;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(title),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          itemBuilder: (context, index) {
            if (index == 0) return VerticalSpace(10);
            return ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                      image: NetworkImage(categories[index - 1].iconUrl),
                      width: 34,
                      height: 34,
                      errorBuilder: (context, error, stackTrace) {
                        return SizedBox();
                      },
                      fit: BoxFit.cover),
                ),
              ),
              title: Text(categories[index - 1].name,
                  style: Theme.of(context).textTheme.titleLarge),
              subtitle: Text('${categories[index - 1].serviceCount} services',
                  style: Theme.of(context).textTheme.labelMedium),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ServicesListScreen(
                      categoryID: categories[index - 1].id,
                      categoryName: categories[index - 1].name,
                    ),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return VerticalSpace(10);
          },
          itemCount: 3),
    );
  }
}
