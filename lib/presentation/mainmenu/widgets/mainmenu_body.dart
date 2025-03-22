import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/service_available/service_available_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/mainmenu/widgets/carousel.dart';
import 'package:profac/presentation/mainmenu/widgets/categories_lists.dart';
import 'package:profac/presentation/mainmenu/widgets/services_grid.dart';

class MainmenuBody extends StatelessWidget {
  const MainmenuBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceAvailableBloc, ServiceAvailableState>(
      builder: (context, state) {
        if (!state.isAvailable) {
          return SliverFillRemaining(
            child: Column(
              children: [
                VerticalSpace(100),
                Center(
                  child: Text(
                    "No services available at the moment",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/search_service");
                      },
                      child: Hero(
                        tag: "search",
                        child: SearchBox(
                          enabled: false,
                          hintText: "Search for services",
                          controller: TextEditingController(),
                        ),
                      ),
                    ),
                    VerticalSpace(20),
                    Carousel(),
                    ServicesGrid(),
                  ],
                ),
              ),
              // StoriesList(),
              CategoriesLists(),
              VerticalSpace(0),
            ],
          ),
        );
      },
    );
  }
}
