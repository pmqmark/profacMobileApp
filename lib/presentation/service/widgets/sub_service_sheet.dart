import 'package:flutter/material.dart';
import 'package:profac/domain/services/model/option_model.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/widgets/options_list_view.dart';

class SubServiceSheet extends StatelessWidget {
  const SubServiceSheet(
      {super.key,
      required this.options,
      required this.subServiceName,
      required this.subServiceId,
      required this.categoryId});
  final String subServiceName;
  final String subServiceId;
  final String categoryId;
  final List<OptionModel> options;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 250,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subServiceName, style: Theme.of(context).textTheme.titleLarge),
            VerticalSpace(15),
            SizedBox(
              height: 130,
              child: OptionsListView(
                  options: options,
                  subServiceId: subServiceId,
                  categoryId: categoryId),
            ),
            Spacer(),
            BottomSaveButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: "Done",
            )
          ],
        ),
      ),
    );
  }
}
