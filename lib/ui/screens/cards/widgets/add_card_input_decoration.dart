import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';

InputDecoration addCardInputDecoration() {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: HexColor('#0F0D23').withOpacity(0.2),
      ),
      borderRadius: BorderRadius.circular(4).w,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: AppColors.primary,
      ),
      borderRadius: BorderRadius.circular(4).w,
    ),
  );
}
