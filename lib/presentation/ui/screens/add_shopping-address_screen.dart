import 'package:e_commerce1/presentation/ui/widgets/checkout/address_text_feild.dart';
import 'package:e_commerce1/presentation/ui/widgets/checkout/country_drop_dwon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../widgets/custom_elevated_button.dart';

class AddShippingAddressScreen extends StatelessWidget {
  AddShippingAddressScreen({super.key});

  final fullNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF9F9F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          "Adding Shipping Address",
          style: TextStyle(color: Colors.black),
        ),

        leading: const BackButton(
          color: Colors.black,
        ),
      ),

      body: SafeArea(

        child: SingleChildScrollView(

          padding: EdgeInsets.all(16.w),

          child: Column(

            children: [

              AddressTextField(
                hint: "Full name",
                controller: fullNameController,
              ),

              SizedBox(height: 16.h),

              AddressTextField(
                hint: "Address",
                controller: addressController,
              ),

              SizedBox(height: 16.h),

              AddressTextField(
                hint: "City",
                controller: cityController,
              ),

              SizedBox(height: 16.h),

              AddressTextField(
                hint: "State / Province / Region",
                controller: stateController,
              ),

              SizedBox(height: 16.h),

              AddressTextField(
                hint: "Zip Code",
                controller: zipController,
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 16.h),

              const CountryDropdownField(),

              SizedBox(height: 40.h),

              SizedBox(

                width: double.infinity,

                child: PrimaryButton(

                  text: "SAVE ADDRESS",

                  onPressed: () {

                    // API Call

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}