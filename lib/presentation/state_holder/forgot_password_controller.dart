import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final isLoading = false.obs;

  Future<void> sendResetLink() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    isLoading.value = false;

    Get.snackbar(
      "Success",
      "Password reset link sent successfully.",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}