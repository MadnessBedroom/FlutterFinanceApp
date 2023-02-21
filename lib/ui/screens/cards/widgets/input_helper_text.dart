import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputHelperText extends Text {
  InputHelperText({
    Key? key,
    required String data,
  }) : super(
          key: key,
          data,
          style: TextStyle(
            color: HexColor('#020614').withOpacity(0.5),
            fontSize: 12.sp,
          ),
        );
}
