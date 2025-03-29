import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/service_available/service_available_bloc.dart';
import 'package:profac/presentation/address/widgets/saved_address_bottom_sheet.dart';
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 54.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/home/service_unavailable.png",
                    width: 268.w,
                    height: 268.w,
                  ),
                  Text(
                    "Services you are looking for are currently not live in this location",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 20.sp,
                          color: Colors.black,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  VerticalSpace(15),
                  Text(
                    "Please change location or explore other services on our homescreen",
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  VerticalSpace(20),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (context) {
                          return SavedAddressBottomSheet();
                        },
                      );
                    },
                    child: Text("Change Location",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  VerticalSpace(60.h)
                ],
              ),
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
