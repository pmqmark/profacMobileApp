import 'package:flutter/material.dart';
import 'package:profac/domain/settings/help_and_support/model/help_and_support_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class HelpDetailedScreen extends StatelessWidget {
  const HelpDetailedScreen({super.key, required this.helpSubTopicModel});
  final HelpSubTopicModel helpSubTopicModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(20),
            Text(
              helpSubTopicModel.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            VerticalSpace(15),
            Text(
              helpSubTopicModel.content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            VerticalSpace(10),
            if (helpSubTopicModel.button != null &&
                isRouteAvailable(context, helpSubTopicModel.button!.route))
              ElevatedButton(
                onPressed: () {},
                child: Text(helpSubTopicModel.button!.text,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                        )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF57BC5B),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
          ],
        ),
      ),
    );
  }

  bool isRouteAvailable(BuildContext context, String routeName) {
    // Get the MaterialApp/CupertinoApp ancestor
    final MaterialApp? materialApp =
        context.findAncestorWidgetOfExactType<MaterialApp>();

    // Check routes in either MaterialApp or CupertinoApp
    final Map<String, WidgetBuilder>? routes = materialApp?.routes;

    // Check if route exists
    return routes?.containsKey(routeName) ?? false;
  }
}
