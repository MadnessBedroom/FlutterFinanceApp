import 'package:finance_app_ui/common/app_colors.dart';
import 'package:finance_app_ui/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavingsScreen extends HookWidget {
  const SavingsScreen({super.key});

  static const routeName = '/savings';

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: 2);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(title: 'Your Saving', context: context),
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                controller: controller,
                unselectedLabelColor: HexColor('#CCCCCC'),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.normal),
                labelColor: AppColors.primary,
                labelStyle: TextStyle(
                  color: AppColors.primary,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                indicatorColor: AppColors.primary,
                indicatorWeight: 4,
                tabs: [
                  SizedBox(
                    height: (16 * 2).h,
                    child: const Text('On Progress'),
                  ),
                  SizedBox(
                    height: (16 * 2).h,
                    child: const Text('Done'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
