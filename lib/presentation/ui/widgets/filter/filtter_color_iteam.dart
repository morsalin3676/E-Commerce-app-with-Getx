import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterColorItem extends StatelessWidget {
  final Color color;
  final bool selected;
  final VoidCallback onTap;

  const FilterColorItem({
    super.key,
    required this.color,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 14.w),
        width: 42.w,
        height: 42.h,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: selected ? Colors.red : Colors.transparent,
            width: 3,
          ),
        ),
        child: selected
            ? const Icon(
          Icons.check,
          color: Colors.white,
          size: 18,
        )
            : null,
      ),
    );
  }
}