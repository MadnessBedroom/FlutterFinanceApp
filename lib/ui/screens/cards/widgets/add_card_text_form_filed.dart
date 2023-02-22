import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import 'add_card_input_decoration.dart';

TextFormField addCardTextFormFiled({
  Widget? suffixIcon,
  TextInputType? inputType,
}) {
  return TextFormField(
    keyboardType: inputType,
    cursorColor: AppColors.primary,
    style: TextStyle(
      color: HexColor('#333333'),
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    ),
    decoration: addCardInputDecoration().copyWith(
      suffixIcon: suffixIcon,
    ),
  );
}
