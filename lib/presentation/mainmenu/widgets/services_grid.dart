import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ServicesGrid extends StatelessWidget {
  ServicesGrid({
    super.key,
  });
  final services = [
    {
      "icon": Icons.build_outlined,
      "title": "Appliance repair & service",
    },
    {
      "title": "Salon for women",
      "icon": Icons.face_retouching_natural_sharp,
    },
    {
      "title": "Bathroom & Kitchen Cleaning",
      "icon": Icons.cleaning_services,
    },
    {
      "title": "Electritions and Plumbers",
      "icon": Icons.electrical_services,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 157 / 47,
      ),
      children: List.generate(
        services.length,
        (index) {
          return InkWell(
            onTap: () {
              // Handle tap action
            },
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Material(
              color:
                  Colors.transparent, // Ensure background remains transparent
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Icon(
                        services[index]["icon"] as IconData,
                        size: 20,
                      ),
                      HorizontalSpace(10),
                      Expanded(
                        child: Text(
                          services[index]["title"] as String,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(height: 1.1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
