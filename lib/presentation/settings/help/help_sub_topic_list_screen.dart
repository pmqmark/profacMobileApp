import 'package:flutter/material.dart';
import 'package:profac/domain/settings/help_and_support/model/help_and_support_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/settings/help/help_detailed_screen.dart';

class HelpSubTopicListScreen extends StatelessWidget {
  const HelpSubTopicListScreen({super.key, required this.helpTopicModel});
  final HelpTopicModel helpTopicModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(helpTopicModel.topic),
        backgroundColor: Color(0xFFE8FFEE),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(14),
        itemBuilder: (context, index) {
          final item = helpTopicModel.list[index];
          return ListTile(
            dense: true,
            shape: Border(
              bottom: BorderSide(color: Color(0xFF57BC5B), width: 1),
            ),
            title: Text(
              item.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.black54,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HelpDetailedScreen(helpSubTopicModel: item);
              }));
            },
          );
        },
        separatorBuilder: (context, index) {
          return VerticalSpace(10);
        },
        itemCount: helpTopicModel.list.length,
      ),
    );
  }
}
