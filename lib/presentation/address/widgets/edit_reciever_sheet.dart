import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
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
  @override
  void initState() {
    _nameController.text = widget.name;
    _phoneController.text = widget.phone;
    super.initState();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  Future<void> _pickContact() async {
    try {
      // Request contact permission
      if (await FlutterContacts.requestPermission()) {
        // Open the device's contact picker
        Contact? contact = await FlutterContacts.openExternalPick();

        if (contact != null) {
          setState(() {
            _nameController.text = contact.displayName;
            _phoneController.text =
                contact.phones.isNotEmpty ? contact.phones.first.number : '';
          });
        }
      } else {
        // Handle permission denied
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Permission denied to access contacts.')),
        );
      }
    } catch (e) {
      // Handle errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking contact: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
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
                onPressed: _pickContact, // Call _pickContact on button press
                icon: Icon(
                  Icons.contacts_outlined,
                  size: 20,
                ),
              ),
            ),
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
          ),
          VerticalSpace(16),
          BottomSaveButton(
            onPressed: () {
              // Save action
              print('Name: ${_nameController.text}');
              print('Phone: ${_phoneController.text}');
              widget.onSave(_nameController.text, _phoneController.text);
              Navigator.of(context).pop();
            },
            text: "Save",
          ),
          VerticalSpace(10),
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          ),
        ],
      ),
    );
  }
}
