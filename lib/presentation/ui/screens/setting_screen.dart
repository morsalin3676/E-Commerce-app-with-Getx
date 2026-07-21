import 'package:e_commerce1/presentation/ui/widgets/profile/change_password_buttom_sheet.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/setting_switch_title.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/setting_text-feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool sales = true;
  bool arrivals = false;
  bool delivery = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Settings",
              style: TextStyle(
                fontSize: 34.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 32.h),

            Text(
              "Personal Information",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 16.h),

            const SettingsTextField(
              label: "Full Name",
              value: "Md Morsalin",
            ),

            SizedBox(height: 16.h),

            const SettingsTextField(
              label: "Date of Birth",
              value: "25/02/2005",
            ),

            SizedBox(height: 32.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                TextButton(
                  onPressed: () {
                    Get.to(()=> ChangePasswordBottomSheet());
                  },
                  child: const Text("Change"),
                )
              ],
            ),

            const SettingsTextField(
              label: "Password",
              value: "****************",
              isPassword: true,
            ),

            SizedBox(height: 32.h),

            Text(
              "Notifications",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 18.h),

            SettingsSwitchTile(
              title: "Sales",
              value: sales,
              onChanged: (value) {
                setState(() {
                  sales = value;
                });
              },
            ),

            SettingsSwitchTile(
              title: "New arrivals",
              value: arrivals,
              onChanged: (value) {
                setState(() {
                  arrivals = value;
                });
              },
            ),

            SettingsSwitchTile(
              title: "Delivery status changes",
              value: delivery,
              onChanged: (value) {
                setState(() {
                  delivery = value;
                });
              },
            ),

            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}