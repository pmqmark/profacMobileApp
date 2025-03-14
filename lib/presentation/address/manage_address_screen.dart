import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/presentation/address/search_location.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ManageAddressScreen extends StatefulWidget {
  const ManageAddressScreen({super.key});

  @override
  State<ManageAddressScreen> createState() => _ManageAddressScreenState();
}

class _ManageAddressScreenState extends State<ManageAddressScreen> {
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
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Manage Address'),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return _buildAddAddressButton();
            },
            profileLoaded: (value) {
              final addressList = value.model.addressList;
              return Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, i) {
                          if (i == 0) {
                            return _buildAddAddressButton();
                          }
                          final index = i - 1;
                          return ListTile(
                            visualDensity: VisualDensity.compact,
                            titleAlignment: ListTileTitleAlignment.top,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
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
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: value.model.addressList.length + 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BottomSaveButton(
                        onPressed: () {
                          if (selectedAddressIndex != null) {
                            final selectedAddress =
                                addressList[selectedAddressIndex!];
                            BlocProvider.of<AddressBloc>(context)
                                .add(AddressEvent.setAddress(selectedAddress));
                          }
                          Navigator.of(context)
                              .pushNamedAndRemoveUntil('/home', (_) => false);
                        },
                        text: "Proceed"),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildAddAddressButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 26),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
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
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
