import 'package:dotted_border/dotted_border.dart';
import 'package:finance_app_ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DottedIconButton extends GestureDetector {
  DottedIconButton({
    Key? key,
    VoidCallback? onTap,
    required IconData icon,
    required String text,
  }) : super(
          key: key,
          onTap: onTap,
          child: DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [6, 3],
            radius: const Radius.circular(10).w,
            color: AppColors.primary,
            strokeWidth: 1.5,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 56.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).w,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1.5,
                  style: BorderStyle.none,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 24.sp,
                    color: AppColors.primary,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
}
