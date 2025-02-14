import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/service/widgets/service_category_list_item.dart';
import 'package:profac/presentation/service/widgets/service_options_floating_button.dart';

class ServicesListScreen extends StatelessWidget {
  ServicesListScreen({super.key});
  final List<String> items = [
    'Bath fittings',
    'Kitchen fittings',
    'Pipe fittings',
    'Water tank fittings ',
    'Water motor fittings ',
    'Water purifier fittings ',
    'Water heater fittings ',
    'Water cooler fittings ',
    'Water purifier fittings ',
    'Water heater fittings ',
    'Water cooler fittings ',
    'Water purifier fittings ',
    'Water heater fittings ',
    'Water cooler fittings ',
    'Water purifier fittings ',
    'Water heater fittings ',
    'Water cooler fittings ',
    'Water purifier fittings ',
    'Water heater fittings ',
    'Water cooler fittings ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Plumber"),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            VerticalSpace(18),
            Text(
              "Plumber",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            VerticalSpace(5),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 18),
                HorizontalSpace(5),
                Text(
                  "4.8 (4M bookings)",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            VerticalSpace(24),
            SearchBox(
                hintText: "Search for services",
                controller: TextEditingController()),
            VerticalSpace(24),
            ...List.generate(
              5,
              (index) {
                if (index.isOdd) {
                  return VerticalSpace(16);
                }
                return ServiceCategoryListItem();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ServiceOptionsFloatingButton(items: items),
    );
  }
}
