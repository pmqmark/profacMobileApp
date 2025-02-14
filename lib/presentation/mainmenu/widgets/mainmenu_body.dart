import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/mainmenu/widgets/appliance_repair_list.dart';
import 'package:profac/presentation/mainmenu/widgets/carousel.dart';
import 'package:profac/presentation/mainmenu/widgets/services_grid.dart';
import 'package:profac/presentation/mainmenu/widgets/stories_list.dart';

class MainmenuBody extends StatelessWidget {
   MainmenuBody({
    super.key, required this.textFieldFocusNode,
  });
  final TextEditingController searchController = TextEditingController();
  final FocusNode textFieldFocusNode ;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                TextFormField(
                  controller: searchController,
                  focusNode: textFieldFocusNode,
                  autofocus: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.search, size: 18),
                    hintText: 'Search for services',
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.r),
                      borderSide: BorderSide(
                        color: Colors.grey[200]!,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                VerticalSpace(20),
                Carousel(),
                ServicesGrid(),
              ],
            ),
          ),
          StoriesList(),
          ApplianceRepairList(),
          VerticalSpace(60)
        ],
      ),
    );
  }
}
