import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:profac/domain/services/model/service_mode.dart';
import 'package:profac/presentation/service/widgets/service_list_item.dart';

class ServiceCategoryListItem extends StatelessWidget {
  const ServiceCategoryListItem({
    super.key,
    required this.serviceModel,
  });
  final ServiceModel serviceModel;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        child: ExpansionWidget(
          initiallyExpanded: true,
          titleBuilder:
              (double animationValue, _, bool isExpaned, toogleFunction) {
            return GestureDetector(
              onTap: () => toogleFunction(animated: true),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(serviceModel.name,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  Icon(
                    isExpaned
                        ? Icons.keyboard_arrow_down_outlined
                        : Icons.keyboard_arrow_up_outlined,
                    color: Colors.black45,
                  )
                ],
              ),
            );
          },
          content: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ServiceListItem(
                subServiceModel: serviceModel.subservices[index],
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: serviceModel.subservices.length,
          ),
        ),
      ),
    );
  }
}
