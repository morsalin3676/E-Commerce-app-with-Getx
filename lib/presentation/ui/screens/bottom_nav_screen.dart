import 'package:e_commerce1/presentation/ui/screens/my_bag_screen.dart';
import 'package:e_commerce1/presentation/ui/screens/profile_screen.dart';
import 'package:e_commerce1/presentation/ui/screens/wishlist_screen.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../state_holder/bottom_nav_controller.dart';
import 'catagory_screen.dart';
import 'home_screen.dart';


class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});

  final BottomNavController controller =
  Get.put(BottomNavController());

  final List<Widget> screens = [

    const HomeScreen(),

    CategoriesScreen(),

     MyBagScreen(),

     WishListScreen(),

    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return GetBuilder<BottomNavController>(
      builder: (_) {

        return Scaffold(

          body: IndexedStack(
            index: controller.selectedIndex,
            children: screens,
          ),

          bottomNavigationBar: const CustomBottomNav(),
        );
      },
    );
  }
}