import 'package:e_commerce1/presentation/state_holder/log_in_controller.dart';
import 'package:e_commerce1/presentation/ui/utils/validator/app_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_text_feild.dart';



class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [

          CustomTextField(
            controller: controller.emailController,
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            validator: AppValidator.email,
            prefixIcon: const Icon(Icons.email_outlined),
          ),

          SizedBox(height: 20.h),

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
        ],
      ),
    );
  }
}