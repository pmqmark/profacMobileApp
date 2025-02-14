import 'package:flutter/material.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewAddressForm extends StatefulWidget {
  const NewAddressForm({
    super.key,
    this.address,
    this.hasError = false,
  });
  final GMapAddress? address;
  final bool hasError;
  @override
  _NewAddressFormState createState() => _NewAddressFormState();
}

class _NewAddressFormState extends State<NewAddressForm> {
  AddressType _selectedAddressType = AddressType.home;
  final TextEditingController _otherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        if (widget.hasError)
          Column(
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
          ),
        if (!widget.hasError)
          Skeletonizer(
            enabled: widget.address == null,
            ignoreContainers: true,
            child: _CurrentAddrss(
              address: widget.address ??
                  GMapAddress(
                    formattedAddress:
                        "formatted address,formatted address,formatted address",
                    lat: 0.0,
                    lng: 0.0,
                    name: "name,name,name,name",
                  ),
            ),
          ),
        Divider(),
        VerticalSpace(16),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Flat, House no., Building, Company, Apartment",
          ),
        ),
        VerticalSpace(16),
        TextFormField(
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
              selectedAddressType: _selectedAddressType,
              onSelected: (isSelected) {
                if (isSelected) {
                  setState(() {
                    _selectedAddressType = AddressType.home;
                  });
                }
              },
              addressType: AddressType.home,
            ),
            HorizontalSpace(10),
            _AddressTypeChip(
              name: "Ohter",
              selectedAddressType: _selectedAddressType,
              onSelected: (isSelected) {
                if (isSelected) {
                  setState(() {
                    _selectedAddressType = AddressType.other;
                  });
                }
              },
              addressType: AddressType.other,
            ),
          ],
        ),
        if (_selectedAddressType == AddressType.other) ...[
          VerticalSpace(16),
          TextFormField(
            controller: _otherController,
            decoration: InputDecoration(
              hintText: "Eg, Reo's home, Mom's place, etc.",
            ),
          ),
        ],
        VerticalSpace(16),
        ListTile(
          leading: Icon(
            Icons.person_2_outlined,
            size: 22,
          ),
          title: Text(
            "Reo, +91 8921066518",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black,
                ),
          ),
          trailing: TextButton(
            onPressed: () {},
            child: Text("Change",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                )),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
          ),
          contentPadding: EdgeInsets.only(left: 10),
        ),
      ],
    );
  }
}

class _AddressTypeChip extends StatelessWidget {
  _AddressTypeChip({
    super.key,
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

class _CurrentAddrss extends StatelessWidget {
  const _CurrentAddrss({
    super.key,
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
