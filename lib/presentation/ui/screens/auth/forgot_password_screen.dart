import 'package:e_commerce1/presentation/state_holder/forgot_password_controller.dart';
import 'package:e_commerce1/presentation/ui/utils/validator/app_validator.dart';
import 'package:e_commerce1/presentation/ui/widgets/auth_header.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_elevated_button.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'log_in_screen.dart';



class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final controller = Get.put(ForgotPasswordController());

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
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                 AuthHeader(title: "Forgot Password",
                iconButton:    IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                ),

                Gap(35.h),

                Text(
                  "Please enter your email address. You will receive a link to create a new password via email.",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey.shade600,
                    height: 1.6,
                  ),
                ),

                Gap(35.h),

                CustomTextField(
                  controller: controller.emailController,
                  hintText: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                  validator: AppValidator.email,
                  prefixIcon: const Icon(Icons.email_outlined),
                ),

                Gap(35.h),

                Obx(
                      () => PrimaryButton(
                    text: "SEND RESET LINK",
                    loading: controller.isLoading.value,
                    onPressed: controller.sendResetLink,
                  ),
                ),

                Gap(25.h),

                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.off(() => LoginScreen());
                    },
                    child: const Text("Back to Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}