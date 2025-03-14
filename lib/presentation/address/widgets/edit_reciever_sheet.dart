import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class EditRecieverSheet extends StatefulWidget {
  final String name;
  final String phone;
  final Function(String name, String phone) onSave;

  EditRecieverSheet({
    super.key,
    required this.name,
    required this.phone,
    required this.onSave,
  });

  @override
  State<EditRecieverSheet> createState() => _EditRecieverSheetState();
}

class _EditRecieverSheetState extends State<EditRecieverSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    _nameController.text = widget.name;
    _phoneController.text = widget.phone;
    super.initState();
  }

  Future<void> _pickContact() async {
    try {
      if (await FlutterContacts.requestPermission()) {
        Contact? contact = await FlutterContacts.openExternalPick();

        if (contact != null) {
          setState(() {
            _nameController.text = contact.displayName;
            _phoneController.text =
                contact.phones.isNotEmpty ? contact.phones.first.number : '';
          });
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Permission denied to access contacts.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking contact: $e')),
      );
    }
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number cannot be empty';
    }
    if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Edit Receiver",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            VerticalSpace(20),
            Text(
              "Name",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            VerticalSpace(5),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Full Name",
                suffixIcon: IconButton(
                  onPressed: _pickContact,
                  icon: Icon(
                    Icons.contacts_outlined,
                    size: 20,
                  ),
                ),
              ),
              validator: _validateName,
            ),
            VerticalSpace(16),
            Text(
              "Phone Number",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            VerticalSpace(5),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: "Mobile Number",
              ),
              validator: _validatePhone,
            ),
            VerticalSpace(16),
            BottomSaveButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  widget.onSave(_nameController.text, _phoneController.text);
                  Navigator.of(context).pop();
                }
              },
              text: "Save",
            ),
            VerticalSpace(10),
            SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom,
            ),
          ],
        ),
      ),
    );
  }
}
