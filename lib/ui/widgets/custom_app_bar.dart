import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    required String title,
    required BuildContext context,
    bool showLeading = true,
  }) : super(
          key: key,
          title: Text(
            title,
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: Visibility(
            visible: showLeading,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              color: AppColors.primaryText,
            ),
          ),
        );
}
