import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryDropdownField extends StatefulWidget {
  const CountryDropdownField({super.key});

  @override
  State<CountryDropdownField> createState() =>
      _CountryDropdownFieldState();
}

class _CountryDropdownFieldState
    extends State<CountryDropdownField> {

  String country = "United States";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: country,

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
      ),

      items: const [

        DropdownMenuItem(
          value: "United States",
          child: Text("United States"),
        ),

        DropdownMenuItem(
          value: "Bangladesh",
          child: Text("Bangladesh"),
        ),

        DropdownMenuItem(
          value: "India",
          child: Text("India"),
        ),
      ],

      onChanged: (value) {
        setState(() {
          country = value!;
        });
      },
    );
  }
}