import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/presentation/address/search_location.dart';
import 'package:profac/presentation/cart/cart_screen.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/address/widgets/saved_address_bottom_sheet.dart';

class MainmenuAppbar extends StatelessWidget {
  const MainmenuAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
              profileLoaded: (state) {
                if (state.model.addressList.isEmpty) {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: 0.8,
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return SearchLocationBottomSheet();
                    },
                  );
                } else {
                  showModalBottomSheet(
                    showDragHandle: true,
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) {
                      return SavedAddressBottomSheet();
                    },
                  );
                }
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .elevatedButtonTheme
                        .style
                        ?.backgroundColor
                        ?.resolve({WidgetState.selected}),
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.pin_drop_outlined,
                    size: 18,
                  ),
                ),
              ),
              HorizontalSpace(10),
              _selectedAddress(),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              isLabelVisible: true,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  BlocBuilder<AddressBloc, AddressState> _selectedAddress() {
    return BlocBuilder<AddressBloc, AddressState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return BlocProvider.of<AddressBloc>(context).state.maybeMap(
                loadedLocation: (value) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Current location ▼',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    value.address.name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              );
            }, orElse: () {
              return VerticalSpace(10);
            }, loadedAddress: (state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    state.address.type.toUpperCase(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "${state.address.houseNumber}, ${state.address.shortName}",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              );
            });
          },
          loadedLocation: (state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Current location ▼',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  state.address.name,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
