import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountrySelector extends StatelessWidget {
  const CountrySelector({super.key, required this.countryCodeController});
  final TextEditingController countryCodeController;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            overlayColor: Colors.transparent,
          ),
        ),
      ),
      child: CountryCodePicker(
        searchPadding: EdgeInsets.all(13.w),
        hideCloseIcon: true,
        padding: EdgeInsets.only(left: 10.w),
        searchDecoration: InputDecoration(
          hintText: 'Search',
          filled: true,
          fillColor: Colors.grey[100],
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        initialSelection: 'IN',
        favorite: [
          'IN',
        ],
        onChanged: (value) {
          countryCodeController.text = value.dialCode.toString();
          log(value.dialCode.toString());
          FocusScope.of(context).unfocus();
        },
        showFlag: true,
        showCountryOnly: false,
        showOnlyCountryWhenClosed: false,
        barrierColor: Colors.black12,
      ),
    );
  }
}
