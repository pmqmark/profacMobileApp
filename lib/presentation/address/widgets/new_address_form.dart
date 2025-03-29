import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/presentation/address/widgets/edit_reciever_sheet.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/profile/widgets/edit_profile_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewAddressForm extends StatefulWidget {
  NewAddressForm({
    super.key,
    this.address,
    this.hasError = false,
    required this.otherController,
    required this.nameController,
    required this.phoneController,
    required this.selectedAddressType,
    required this.houseNumberController,
    required this.landmarkController,
    required this.onAddressTypeSelected,
    required this.formKey,
  });
  final GMapAddress? address;
  final bool hasError;
  AddressType selectedAddressType;
  final TextEditingController otherController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController houseNumberController;
  final TextEditingController landmarkController;
  final Function(AddressType) onAddressTypeSelected;
  final GlobalKey<FormState> formKey;
  @override
  _NewAddressFormState createState() => _NewAddressFormState();
}

class _NewAddressFormState extends State<NewAddressForm> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
      profileLoaded: (state) {
        widget.nameController.text = state.model.name;
        widget.phoneController.text = state.model.mobile;
      },
    );
    super.initState();
  }

  String? _validateHouseNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'House number cannot be empty';
    }
    return null;
  }

  String? _validateOther(String? value) {
    if (widget.selectedAddressType == AddressType.other &&
        (value == null || value.isEmpty)) {
      return 'This field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          if (widget.hasError) _errorWidget(context),
          if (!widget.hasError) _loadingWidget(),
          Divider(),
          VerticalSpace(16),
          TextFormField(
            controller: widget.houseNumberController,
            decoration: InputDecoration(
              hintText: "Flat, House no., Building, Company, Apartment",
            ),
            validator: _validateHouseNumber,
          ),
          VerticalSpace(16),
          TextFormField(
            controller: widget.landmarkController,
            decoration: InputDecoration(
              hintText: "Landmark (optional)",
            ),
          ),
          VerticalSpace(16),
          Text("Save as", style: Theme.of(context).textTheme.labelMedium),
          VerticalSpace(8),
          Row(
            children: [
              _AddressTypeChip(
                name: "Home",
                selectedAddressType: widget.selectedAddressType,
                onSelected: (isSelected) {
                  if (isSelected) {
                    setState(() {
                      widget.onAddressTypeSelected(AddressType.home);
                    });
                  }
                },
                addressType: AddressType.home,
              ),
              HorizontalSpace(10),
              _AddressTypeChip(
                name: "Other",
                selectedAddressType: widget.selectedAddressType,
                onSelected: (isSelected) {
                  if (isSelected) {
                    setState(() {
                      widget.onAddressTypeSelected(AddressType.other);
                    });
                  }
                },
                addressType: AddressType.other,
              ),
            ],
          ),
          if (widget.selectedAddressType == AddressType.other) ...[
            VerticalSpace(16),
            TextFormField(
              controller: widget.otherController,
              decoration: InputDecoration(
                hintText: "Eg, Reo's home, Mom's place, etc.",
              ),
              validator: _validateOther,
            ),
          ],
          VerticalSpace(16),
          ListTile(
            leading: Icon(
              Icons.person_2_outlined,
              size: 22,
            ),
            title: Text(
              "${widget.nameController.text}, ${widget.phoneController.text}",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                  ),
            ),
            trailing: TextButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return EditRecieverSheet(
                      name: widget.nameController.text,
                      phone: widget.phoneController.text,
                      onSave: (name, phone) {
                        setState(() {
                          widget.nameController.text = name;
                          widget.phoneController.text = phone;
                        });
                      },
                    );
                  },
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Text("Change",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14,
                  )),
            ),
            contentPadding: EdgeInsets.only(left: 10),
          ),
        ],
      ),
    );
  }

  Column _errorWidget(BuildContext context) {
    return Column(
      children: [
        Text("Something went wrong",
            style: Theme.of(context).textTheme.titleMedium),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Try again",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Skeletonizer _loadingWidget() {
    return Skeletonizer(
      enabled: widget.address == null,
      ignoreContainers: true,
      child: _CurrentAdderss(
        address: widget.address ??
            GMapAddress(
              formattedAddress:
                  "formatted address,formatted address,formatted address",
              lat: 0.0,
              lng: 0.0,
              name: "name,name,name,name",
            ),
      ),
    );
  }
}

class _AddressTypeChip extends StatelessWidget {
  _AddressTypeChip({
    required this.selectedAddressType,
    required this.onSelected,
    required this.addressType,
    required this.name,
  });
  AddressType selectedAddressType;
  final Function(bool) onSelected;
  AddressType addressType;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: selectedAddressType == addressType
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              )),
      selected: selectedAddressType == addressType,
      onSelected: onSelected,
      showCheckmark: false,
      color: WidgetStatePropertyAll(Colors.white),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: selectedAddressType == addressType
                ? Theme.of(context).primaryColor
                : Colors.grey[400]!,
          )),
      backgroundColor: Colors.white,
    );
  }
}

class _CurrentAdderss extends StatelessWidget {
  const _CurrentAdderss({
    required this.address,
  });
  final GMapAddress address;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(address.name, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(
        address.formattedAddress,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: SizedBox(
        height: 25,
        width: 65,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
            "Change",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
