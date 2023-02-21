import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_assets.dart';
import '../../../common/app_colors.dart';
import '../../widgets/custom_rounded_button.dart';
import 'widgets/onboarding_image.dart';
import 'widgets/onboarding_subtitle.dart';
import 'widgets/onboarding_title.dart';

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const OnboardingImage(image: AppAssets.onboarding1),
              SizedBox(height: 82.h),
              OnboardingTitle(data: AppAssets.onboarding1_title),
              SizedBox(height: 16.h),
              OnboardingSubtitle(data: AppAssets.onboarding1_subtitle),
              const SizedBox(height: 24),

              ///
              CustomRoundedButton(
                lable: 'Create Account',
                width: 327.w,
                border: false,
              ),
              SizedBox(height: 16.h),
              RichText(
                text: TextSpan(
                  text: 'Skip This Step',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
