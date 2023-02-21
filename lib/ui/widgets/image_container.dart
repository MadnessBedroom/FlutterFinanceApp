import 'package:finance_app_ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageContainer extends Container {
  ImageContainer({
    Key? key,
  }) : super(
          key: key,
          decoration: BoxDecoration(
            color: AppColors.primary,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 148.h,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: -71.h,
                  right: -65.w,
                  child: Image.asset(
                    'assets/images/card_ellipse.png',
                    width: 200.w,
                    height: 200.h,
                  ),
                ),
              ],
            ),
          ),
        );
}
