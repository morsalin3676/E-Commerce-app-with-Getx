import 'package:e_commerce1/presentation/state_holder/sing_up_controller.dart';
import 'package:e_commerce1/presentation/ui/screens/auth/log_in_screen.dart';
import 'package:e_commerce1/presentation/ui/utils/validator/app_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'custom_elevated_button.dart';
import 'custom_text_feild.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key,});

  final controller = Get.find<SignupController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: controller.nameController,
            hintText: "Name",
            validator: AppValidator.name,
            prefixIcon: const Icon(Icons.person_outline),
          ),

          SizedBox(height: 18.h),

          CustomTextField(
            controller: controller.emailController,
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            validator: AppValidator.email,
            prefixIcon: const Icon(Icons.email_outlined),
          ),

          SizedBox(height: 18.h),

          Obx(
                () => CustomTextField(
              controller: controller.passwordController,
              hintText: "Password",
              validator: AppValidator.password,
              obscureText: controller.obscurePassword.value,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: controller.togglePassword,
                icon: Icon(
                  controller.obscurePassword.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
            ),
          ),

          SizedBox(height: 15.h),

          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Get.to(()=>LoginScreen());
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_forward, size: 16),
                ],
              ),
            ),
          ),

          SizedBox(height: 30.h),

          Obx(
                () => PrimaryButton(
              text: "SIGN UP",
              loading: controller.isLoading.value,
              onPressed: controller.signup,
            ),
          ),
        ],
      ),
    );
  }
}