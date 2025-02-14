import 'package:flutter/material.dart';
import 'package:profac/presentation/authentication/login_screen/widgets/country_selector.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({
    super.key,
    required this.countryCodeController,
    required this.isExpanded,
    required this.shrink,
    required this.expand,
  });

  final TextEditingController countryCodeController;
  final bool isExpanded;
  final VoidCallback shrink;
  final VoidCallback expand;

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        widget.expand();
      } else if (widget.isExpanded) {
        widget.shrink();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!, width: 1)),
      child: Row(
        children: [
          CountrySelector(
            countryCodeController: widget.countryCodeController,
          ),
          Expanded(
            child: TextFormField(
              focusNode: _focusNode,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
