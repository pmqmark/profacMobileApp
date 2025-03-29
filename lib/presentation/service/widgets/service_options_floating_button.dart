import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/domain/services/model/service_mode.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ServiceOptionsFloatingButton extends StatelessWidget {
  const ServiceOptionsFloatingButton({
    super.key,
    required this.scrollController,
    required this.services,
    required this.serviceKeys,
  });
  final ScrollController scrollController;
  final List<ServiceModel> services;
  final Map<String, GlobalKey> serviceKeys;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<ServiceModel>(
        isDense: true,
        alignment: Alignment.center,
        isExpanded: true,
        barrierDismissible: true,
        barrierColor: Colors.black26,
        items: services
            .map((ServiceModel item) => DropdownMenuItem<ServiceModel>(
                  value: item,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.name,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      HorizontalSpace(10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZRWcU-2DDd2_DT8_CZroQqmwsVuNmNgggqg&s",
                          width: 60,
                          fit: BoxFit.cover,
                          height: 40,
                          errorBuilder: (context, error, stackTrace) {
                            return SizedBox();
                          },
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
        onChanged: (ServiceModel? value) {
          if (value != null) {
            _scrollToService(value);
          }
        },
        buttonStyleData: ButtonStyleData(
          height: 50,
          width: 50,
          padding: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black,
          ),
          elevation: 2,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.grid_view_rounded,
          ),
          iconSize: 22,
          iconEnabledColor: Colors.white,
          openMenuIcon: Icon(Icons.remove_circle, color: Colors.white),
        ),
        dropdownStyleData: DropdownStyleData(
          direction: DropdownDirection.left,
          maxHeight: 500,
          width: 280.w,
          scrollbarTheme: ScrollbarThemeData(
            thickness: WidgetStateProperty.all(0),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          padding: const EdgeInsets.all(10),
          offset: Offset(-10,
              (services.length * 50) > 500 ? 560 : (services.length * 60) + 80),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 60,
        ),
      ),
    );
  }

  void _scrollToService(ServiceModel service) {
    final key = serviceKeys[service.id];
    if (key != null) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }
  }
}
