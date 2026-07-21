import 'package:e_commerce1/presentation/ui/screens/my_order_screen.dart';
import 'package:e_commerce1/presentation/ui/screens/setting_screen.dart';
import 'package:e_commerce1/presentation/ui/screens/shopping_address_screen.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/profile_header.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/profile_manu_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [

            SizedBox(height: 25.h),

            const ProfileHeader(),

            SizedBox(height: 35.h),

            ProfileMenuTile(
              title: "My Orders",
              subtitle: "Already have 12 orders",
              onTap: () {
                Get.to(()=> MyOrdersScreen());
              },
            ),

            ProfileMenuTile(
              title: "Shipping Addresses",
              subtitle: "3 Addresses",
              onTap: () {
                Get.to(()=> ShoppingAddressScreen());
              },
            ),

            ProfileMenuTile(
              title: "Payment Methods",
              subtitle: "Visa **34",
              onTap: () {},
            ),

            ProfileMenuTile(
              title: "Promo Codes",
              subtitle: "You have special codes",
              onTap: () {},
            ),

            ProfileMenuTile(
              title: "My Reviews",
              subtitle: "Reviews for 4 items",
              onTap: () {},
            ),

            ProfileMenuTile(
              title: "Settings",
              subtitle: "Notification & Password",
              onTap: () {
                Get.to(()=> SettingsScreen());
              },
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}