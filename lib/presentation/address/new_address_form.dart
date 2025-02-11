import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class NewAddressForm extends StatelessWidget {
  const NewAddressForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text("Kochi International Airpot (COK)",
              style: Theme.of(context).textTheme.titleMedium),
          subtitle: Text(
            "Airport Road, Nedumbassery, Kochi, Kerala, India",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          trailing: SizedBox(
            height: 25,
            width: 65,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Change",
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
            Chip(
              label:
                  Text("Home", style: Theme.of(context).textTheme.bodyMedium),
              backgroundColor: Colors.white,
            ),
            HorizontalSpace(10),
            Chip(
              label:
                  Text("Other", style: Theme.of(context).textTheme.bodyMedium),
              backgroundColor: Colors.white,
            ),
          ],
        ),
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
        )
      ],
    );
  }
}
