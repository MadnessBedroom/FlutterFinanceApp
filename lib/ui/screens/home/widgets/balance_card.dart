import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import 'entrance_item.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24).r,
      child: Container(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 18,
          bottom: 16,
        ).r,
        width: double.infinity,
        height: 172.h,
        constraints: BoxConstraints(minHeight: 172.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).w,
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: HexColor('#0F0D23').withOpacity(0.04),
              offset: const Offset(10, 24),
              blurRadius: 54,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Balance',
                  style: TextStyle(fontSize: 14.sp, color: AppColors.blue),
                ),
                Text(
                  '\$2887.65',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            const Divider(height: 0),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  EntranceItem(
                    icon: 'assets/icons/send_money.png',
                    text: 'Send',
                  ),
                  EntranceItem(
                    icon: 'assets/icons/request_money.png',
                    text: 'Request',
                  ),
                  EntranceItem(
                    icon: 'assets/icons/Pay.png',
                    text: 'Pay',
                  ),
                  EntranceItem(
                    icon: 'assets/icons/TopUp.png',
                    text: 'Top Up',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
