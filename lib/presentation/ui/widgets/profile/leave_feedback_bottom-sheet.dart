import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaveFeedbackBottomSheet extends StatefulWidget {
  const LeaveFeedbackBottomSheet({super.key});

  @override
  State<LeaveFeedbackBottomSheet> createState() =>
      _LeaveFeedbackBottomSheetState();
}

class _LeaveFeedbackBottomSheetState
    extends State<LeaveFeedbackBottomSheet> {

  int rating = 0;

  final TextEditingController reviewController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.r),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: 60.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),

              SizedBox(height: 25.h),

              Text(
                "Leave Feedback",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 12.h),

              Text(
                "How was your experience?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),

              SizedBox(height: 25.h),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: List.generate(
                  5,
                      (index) => IconButton(
                    onPressed: () {
                      setState(() {
                        rating = index + 1;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      size: 34.sp,
                      color: index < rating
                          ? Colors.amber
                          : Colors.grey.shade300,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25.h),

              TextField(
                controller: reviewController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText:
                  "Write your review here...",
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(12.r),
                  ),
                ),
              ),

              SizedBox(height: 25.h),

              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.pop(context);

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}