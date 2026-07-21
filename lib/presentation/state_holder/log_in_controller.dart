import 'package:e_commerce1/presentation/ui/screens/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
 
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final obscurePassword = true.obs;

  final isLoading = false.obs;

  void togglePassword() {
    obscurePassword.value = !obscurePassword.value;
  }

  Future<void> login() async {

    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;

    Get.snackbar(
      "Success",
      "Login Successfully",
      snackPosition: SnackPosition.BOTTOM,
    );
    Get.offAll(()=>BottomNavScreen());
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}