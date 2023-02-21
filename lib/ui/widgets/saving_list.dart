import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../common/app_colors.dart';
import '../../common/app_data.dart';

class SavingList extends StatelessWidget {
  const SavingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40 - 24).r,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: AppData.savings.length,
        itemBuilder: (context, index) => ListTile(
          leading: Container(
            width: 48.w,
            height: 48.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: HexColor('#F2F2F2'),
            ),
            child: Image.asset(
              AppData.savings[index].icon,
              width: 32.w,
              height: 32.h,
            ),
          ),
          title: Text(
            AppData.savings[index].title,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            AppData.savings[index].description,
            style: TextStyle(
              fontSize: 12.sp,
              color: HexColor('#333333'),
            ),
          ),
          trailing: CircularPercentIndicator(
            radius: 25.0,
            lineWidth: 5.0,
            animation: true,
            animationDuration: 1000,
            percent: AppData.savings[index].progress > 100
                ? 100 / 100
                : AppData.savings[index].progress / 100,
            center: Text(
              '${AppData.savings[index].progress}%',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
