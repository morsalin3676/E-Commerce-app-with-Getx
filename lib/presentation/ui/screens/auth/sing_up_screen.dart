import 'package:e_commerce1/presentation/state_holder/sing_up_controller.dart';
import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:e_commerce1/presentation/ui/widgets/auth_header.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_social_button.dart';
import 'package:e_commerce1/presentation/ui/widgets/sing_up_from.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';



class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const AuthHeader(title: 'Sign Up',),

                Gap(40.h),

                SignupForm(),

                Gap(60.h),

                const Center(
                  child: Text("Or sign up with social account"),
                ),

                Gap(20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      icon: AppAssets.google,
                      onTap: () {},
                    ),
                    Gap(16.w),
                    SocialButton(
                      icon: AppAssets.facebook,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}