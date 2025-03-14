import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/category_detailed/category_detailed_bloc.dart';
import 'package:profac/domain/categories/model/category_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/service/widgets/service_category_list_item.dart';
import 'package:profac/presentation/service/widgets/service_options_floating_button.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ServicesListScreen extends StatefulWidget {
  ServicesListScreen(
      {super.key, required this.categoryID, required this.categoryName});
  final String categoryID;
  final String categoryName;
  @override
  State<ServicesListScreen> createState() => _ServicesListScreenState();
}

class _ServicesListScreenState extends State<ServicesListScreen> {
  @override
  void initState() {
    BlocProvider.of<CategoryDetailedBloc>(context).add(
      CategoryDetailedEvent.getCategoryDetailed(widget.categoryID),
    );
    super.initState();
  }

  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _serviceKeys = {};
  final List<String> items = [
    'Bath fittings',
    'Kitchen fittings',
    'Pipe fittings',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailedBloc, CategoryDetailedState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text(widget.categoryName),
            leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: state.map(
              initial: (value) => SizedBox(),
              loading: (_) => _buildLoading(context),
              loaded: (value) {
                return _buildSuccess(context, value.categoryModel);
              },
              error: (value) => SizedBox(),
            ),
          ),
          floatingActionButton: ServiceOptionsFloatingButton(
            scrollController: _scrollController,
            services: state.maybeWhen(
              loaded: (categoryModel) => categoryModel.services,
              orElse: () => [],
            ),
            serviceKeys: _serviceKeys,
          ),
        );
      },
    );
  }

  Skeletonizer _buildLoading(BuildContext context) {
    final CategoryModel categoryModel = CategoryModel(
      id: "id",
      name: "name",
      media: [],
      services: [],
      isArchived: false,
      avgRating: 0,
      bookCount: 0,
      v: 0,
    );
    return Skeletonizer(
      child: _buildSuccess(context, categoryModel),
    );
  }

  ListView _buildSuccess(BuildContext context, CategoryModel categoryModel) {
    _serviceKeys.clear();
    for (var service in categoryModel.services) {
      _serviceKeys[service.id] = GlobalKey();
    }

    return ListView(
      controller: _scrollController,
      children: [
        VerticalSpace(18),
        Text(
          widget.categoryName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        VerticalSpace(5),
        Row(
          children: [
            if (categoryModel.avgRating != 0) ...[
              Icon(Icons.star, color: Colors.amber, size: 18),
              HorizontalSpace(5),
            ],
            if (categoryModel.bookCount > 0)
              Text(
                "${categoryModel.avgRating == 0 ? '' : categoryModel.avgRating} (${categoryModel.bookCount} bookings)",
                style: Theme.of(context).textTheme.labelMedium,
              ),
          ],
        ),
        VerticalSpace(14),
        SearchBox(
            hintText: "Search for services",
            controller: TextEditingController()),
        VerticalSpace(24),
        ...List.generate(
          categoryModel.services.length * 2,
          (index) {
            if (index.isOdd) {
              return VerticalSpace(16);
            }
            final service = categoryModel.services[(index / 2).floor()];
            return ServiceCategoryListItem(
              key: _serviceKeys[service.id],
              serviceModel: service,
              categoryId: categoryModel.id,
            );
          },
        ),
      ],
    );
  }
}
