import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 10,
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Saved Addresses",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
            onPressed: () {
              // Add logic to add a new address
            },
            child: Text(
              "+ Add new address",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
              ),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  visualDensity: VisualDensity.compact,
                  titleAlignment: ListTileTitleAlignment.top,
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 10,
                  title: Text(
                    "Address ${index + 1}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSpace(5),
                      Text(
                          "Ponekkara, Edapally, Kochi, Ernakulam, Kerala 68204, India"),
                      VerticalSpace(4),
                      Text("Reo, +91 8921066518"),
                    ],
                  ),
                  leading: Radio<int>(
                    value: index,
                    groupValue: selectedAddressIndex,
                    onChanged: (int? value) {
                      setState(() {
                        selectedAddressIndex = value;
                      });
                    },
                    visualDensity: VisualDensity.compact,
                    fillColor: WidgetStatePropertyAll(Colors.black),
                  ),
                  trailing: SizedBox(
                    height: 25,
                    width: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                        ),
                      ),
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
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: BottomSaveButton(
              text: "Proceed",
              onPressed: () {
                if (selectedAddressIndex != null) {
                  print("Selected Address: $selectedAddressIndex");
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
