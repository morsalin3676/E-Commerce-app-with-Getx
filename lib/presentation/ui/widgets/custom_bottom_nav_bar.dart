import 'package:e_commerce1/presentation/state_holder/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<BottomNavController>(
      builder: (controller) {

        return Container(

          height: 78.h,

          decoration: BoxDecoration(

            color: Colors.white,

            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22.r),
              topRight: Radius.circular(22.r),
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15.r,
                offset: const Offset(0, -3),
              ),
            ],
          ),

          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [

              _item(
                controller,
                0,
                Icons.home_filled,
                "Home",
              ),

              _item(
                controller,
                1,
                Icons.grid_view_rounded,
                "Shop",
              ),

              _item(
                controller,
                2,
                Icons.shopping_bag_sharp,
                "Bag",
              ),

              _item(
                controller,
                3,
                Icons.favorite_rounded,
                "Wishlist",
              ),

              _item(
                controller,
                4,
                Icons.person,
                "Profile",
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _item(
      BottomNavController controller,
      int index,
      IconData icon,
      String title,
      ) {

    bool selected = controller.selectedIndex == index;

    return InkWell(

      borderRadius: BorderRadius.circular(30.r),

      onTap: () {

        controller.changeIndex(index);

      },

      child: AnimatedContainer(

        duration: const Duration(milliseconds: 250),

        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 8.h,
        ),

        decoration: BoxDecoration(

          color: selected
              ? Colors.red.shade50
              : Colors.transparent,

          borderRadius: BorderRadius.circular(30.r),
        ),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              color: selected
                  ? Colors.red
                  : Colors.grey,
              size: 25.sp,
            ),

            SizedBox(height: 4.h),

            Text(
              title,
              style: TextStyle(
                fontSize: 11.sp,
                color: selected
                    ? Colors.red
                    : Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}