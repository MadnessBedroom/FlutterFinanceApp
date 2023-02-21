import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';

class EntranceItem extends StatelessWidget {
  const EntranceItem({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(7).r,
          width: 46.w,
          height: 46.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: HexColor('#ECE7FF'),
          ),
          child: Image.asset(
            icon,
            width: 32.w,
            height: 32.h,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: AppColors.blue, fontSize: 14.sp),
        ),
      ],
    );
  }
}
