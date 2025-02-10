import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key, required this.itemCount});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionWidget(
            initiallyExpanded: false,
            titleBuilder:
                (double animationValue, _, bool isExpaned, toogleFunction) {
              return GestureDetector(
                onTap: () => toogleFunction(animated: true),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'What does a full cleaning service include?',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: isExpaned
                                      ? Theme.of(context).primaryColor
                                      : Colors.black,
                                ),
                      ),
                    ),
                    Icon(
                      isExpaned ? Icons.remove_outlined : Icons.add_outlined,
                      color: isExpaned
                          ? Theme.of(context).primaryColor
                          : Colors.black45,
                    )
                  ],
                ),
              );
            },
            content: SizedBox(
              width: double.infinity,
              child: Text(
                  'Arrange furniture, disinfect, and add finishing touches like fresh linens or air fresheners.'),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return HorizontalSpace(10);
      },
      itemCount: itemCount,
    );
  }
}
