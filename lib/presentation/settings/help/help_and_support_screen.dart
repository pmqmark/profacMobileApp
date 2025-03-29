import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/settings/help_and_support/help_and_support_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/settings/help/help_detailed_screen.dart';
import 'package:profac/presentation/settings/help/help_sub_topic_list_screen.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({super.key});

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  void initState() {
    BlocProvider.of<HelpAndSupportBloc>(context)
        .add(const HelpAndSupportEvent.fetchHelpAndSupport());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help and Support'),
        backgroundColor: Color(0xFFE8FFEE),
      ),
      body: BlocBuilder<HelpAndSupportBloc, HelpAndSupportState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (value) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Something went wrong"),
                  TextButton(
                    onPressed: () {
                      BlocProvider.of<HelpAndSupportBloc>(context)
                          .add(const HelpAndSupportEvent.fetchHelpAndSupport());
                    },
                    child: Text("Retry"),
                  ),
                ],
              );
            },
            loaded: (list) {
              return ListView.separated(
                padding: EdgeInsets.all(14),
                itemBuilder: (context, index) {
                  final item = list.helpTopics[index];
                  return ListTile(
                    onTap: () {
                      if (item.list.length > 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HelpSubTopicListScreen(helpTopicModel: item);
                        }));
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HelpDetailedScreen(
                                  helpSubTopicModel: item.list[0]);
                            },
                          ),
                        );
                      }
                    },
                    dense: true,
                    shape: Border(
                      bottom: BorderSide(color: Color(0xFF57BC5B), width: 1),
                    ),
                    title: Text(
                      item.topic,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black54,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return VerticalSpace(10);
                },
                itemCount: list.helpTopics.length,
              );
            },
          );
        },
      ),
    );
  }
}
