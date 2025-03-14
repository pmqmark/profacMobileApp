import 'package:flutter/material.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:timelines_plus/timelines_plus.dart';

class Processes extends StatelessWidget {
  const Processes({
    super.key,
    required this.aboutProcesses,
  });
  final List<AboutProcess> aboutProcesses;
  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      theme: TimelineThemeData(
        nodePosition: 0,
        color: const Color(0xff989898),
        indicatorTheme: const IndicatorThemeData(
          position: 0,
          size: 20.0,
        ),
        connectorTheme: const ConnectorThemeData(
          thickness: 2.5,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        contentsAlign: ContentsAlign.basic,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 24, top: 4, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                aboutProcesses[index].title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              Text(aboutProcesses[index].description,
                  style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
        ),
        indicatorBuilder: (context, index) => DotIndicator(
          color: const Color(0x5fEBFFE1),
          border: Border.all(color: const Color(0xffE2F6E2), width: 3),
          size: 24,
          child: Center(
            child: Text(
              '${index + 1}',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        connectorBuilder: (context, index, type) => ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                Theme.of(context).primaryColor.withAlpha(50),
                Theme.of(context).primaryColor,
              ], // Define your gradient colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds);
          },
          blendMode: BlendMode
              .modulate, // Ensure the gradient is applied to the `DashedLineConnector`
          child: DashedLineConnector(
            dash: 4,
            gap: 3,
            space: 6,
            indent: 3,
            endIndent: 3,
            color: Colors.white,
          ),
        ),
        itemCount: aboutProcesses.length,
      ),
    );
  }
}
