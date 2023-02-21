import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';

class OnboardingTitle extends Text {
  OnboardingTitle({
    Key? key,
    required String data,
  }) : super(
          key: key,
          data,
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        );
}
