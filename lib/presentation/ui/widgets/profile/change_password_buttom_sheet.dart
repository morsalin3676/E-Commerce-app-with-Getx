import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordBottomSheet extends StatefulWidget {
  const ChangePasswordBottomSheet({super.key});

  @override
  State<ChangePasswordBottomSheet> createState() =>
      _ChangePasswordBottomSheetState();
}

class _ChangePasswordBottomSheetState
    extends State<ChangePasswordBottomSheet> {

  final TextEditingController oldPasswordController =
  TextEditingController();

  final TextEditingController newPasswordController =
  TextEditingController();

  final TextEditingController confirmPasswordController =
  TextEditingController();

  bool hideOld = true;
  bool hideNew = true;
  bool hideConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(28.r),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: Container(
                  width: 70.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),

              SizedBox(height: 24.h),

              Center(
                child: Text(
                  "Password Change",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),
                ),
              ),

              SizedBox(height: 28.h),

              _passwordField(
                controller: oldPasswordController,
                hint: "Old Password",
                obscure: hideOld,
                onToggle: () {
                  setState(() {
                    hideOld = !hideOld;
                  });
                },
              ),

              SizedBox(height: 10.h),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              _passwordField(
                controller: newPasswordController,
                hint: "New Password",
                obscure: hideNew,
                onToggle: () {
                  setState(() {
                    hideNew = !hideNew;
                  });
                },
              ),

              SizedBox(height: 20.h),

              _passwordField(
                controller: confirmPasswordController,
                hint: "Repeat New Password",
                obscure: hideConfirm,
                onToggle: () {
                  setState(() {
                    hideConfirm = !hideConfirm;
                  });
                },
              ),

              SizedBox(height: 35.h),

              SizedBox(
                width: double.infinity,
                height: 55.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffDB3022),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    "SAVE PASSWORD",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _passwordField({
    required TextEditingController controller,
    required String hint,
    required bool obscure,
    required VoidCallback onToggle,
  }) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.w,
              vertical: 18.h,
            ),
            suffixIcon: IconButton(
              onPressed: onToggle,
              icon: Icon(
                obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
          ),
        ),
      ),
    );
  }
}