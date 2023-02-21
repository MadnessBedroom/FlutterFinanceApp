import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';

class OnboardingSubtitle extends Text {
  OnboardingSubtitle({
    Key? key,
    required String data,
  }) : super(
          key: key,
          data,
          style: TextStyle(
            color: AppColors.grey,
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        );
}
