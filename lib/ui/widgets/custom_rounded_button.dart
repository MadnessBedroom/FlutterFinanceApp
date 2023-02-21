import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_colors.dart';

class CustomRoundedButton extends GestureDetector {
  CustomRoundedButton({
    Key? key,
    VoidCallback? onTap,
    double? width,
    double? height,
    Color? background,
    Color? lableColor,
    required bool border,
    required String lable,
  }) : super(
          key: key,
          onTap: onTap,
          child: Container(
            width: width ?? double.infinity.w,
            height: height ?? 56.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: background ?? AppColors.primary,
              borderRadius: BorderRadius.circular(40).w,
              border: border ? Border.all(color: AppColors.primary) : null,
            ),
            child: Text(
              lable,
              style: TextStyle(
                color: lableColor ?? Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
}
