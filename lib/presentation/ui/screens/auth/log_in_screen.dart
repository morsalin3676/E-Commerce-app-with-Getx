import 'package:e_commerce1/presentation/state_holder/log_in_controller.dart';
import 'package:e_commerce1/presentation/ui/screens/auth/forgot_password_screen.dart';
import 'package:e_commerce1/presentation/ui/widgets/log_in_from.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../utils/app_assets.dart';
import '../../widgets/auth_header.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_social_button.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller = Get.put(LoginController());

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

               AuthHeader(title: "Login",
                 iconButton: IconButton(
                onPressed: () => Get.back(),
                icon:  Icon(Icons.arrow_back_ios_new),
              ),),

              Gap(40.h),

              LoginForm(controller: controller),

              Gap(18.h),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => ForgotPasswordScreen());  // Forgot Password
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              Gap(30.h),

              Obx(
                    () => PrimaryButton(
                  text: "LOGIN",
                  loading: controller.isLoading.value,
                  onPressed: controller.login,
                ),
              ),

              Gap(60.h),

              const Center(
                child: Text(
                  "Or login with social account",
                ),
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
      ),
    );
  }
}