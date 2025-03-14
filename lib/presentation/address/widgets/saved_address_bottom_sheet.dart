import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/presentation/address/search_location.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SavedAddressBottomSheet extends StatefulWidget {
  const SavedAddressBottomSheet({super.key});

  @override
  _SavedAddressBottomSheetState createState() =>
      _SavedAddressBottomSheetState();
}

class _SavedAddressBottomSheetState extends State<SavedAddressBottomSheet> {
  int? selectedAddressIndex; // To keep track of the selected address
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
      profileLoaded: (profileState) {
        BlocProvider.of<AddressBloc>(context).state.mapOrNull(
          loadedAddress: (addressState) {
            selectedAddressIndex = profileState.model.addressList
                .indexWhere((element) => element.id == addressState.address.id);
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 10,
        bottom: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Saved Addresses",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              showModalBottomSheet(
                scrollControlDisabledMaxHeightRatio: 0.8,
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return SearchLocationBottomSheet();
                },
              );
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Text(
              "+ Add new address",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
              ),
            ),
          ),
          Divider(),
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () {
                  return VerticalSpace(10);
                },
                profileLoaded: (state) {
                  final addressList = state.model.addressList;
                  return SizedBox(
                    height: 130 * addressList.length.toDouble(),
                    child: ListView.builder(
                      itemCount: addressList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          visualDensity: VisualDensity.compact,
                          titleAlignment: ListTileTitleAlignment.top,
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 10,
                          title: Text(
                            "${addressList[index].name[0]}${addressList[index].name.substring(1)}",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              VerticalSpace(5),
                              Text(
                                  "${addressList[index].shortName}, ${addressList[index].formattedAddress}"),
                              VerticalSpace(4),
                              Text(
                                  "${addressList[index].name}, ${addressList[index].mobile}"),
                            ],
                          ),
                          leading: Radio<int>(
                            value: index,
                            groupValue: selectedAddressIndex,
                            onChanged: (int? value) {
                              setState(
                                () {
                                  selectedAddressIndex = value;
                                },
                              );
                            },
                            visualDensity: VisualDensity.compact,
                            fillColor: WidgetStatePropertyAll(Colors.black),
                          ),
                          trailing: SizedBox(
                            height: 25,
                            width: 45,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: BottomSaveButton(
              text: "Proceed",
              onPressed: () {
                if (selectedAddressIndex != null) {
                  BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
                    profileLoaded: (state) {
                      final selectedAddress =
                          state.model.addressList[selectedAddressIndex!];
                      BlocProvider.of<AddressBloc>(context)
                          .add(AddressEvent.changeAddress(selectedAddress));
                    },
                  );
                } else {
                  // Show a message if no address is selected
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please select an address")),
                  );
                }
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
