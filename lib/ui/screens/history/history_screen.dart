import 'package:finance_app_ui/common/app_colors.dart';
import 'package:finance_app_ui/ui/screens/home/widgets/balance_card.dart';
import 'package:finance_app_ui/ui/widgets/payment_card_list.dart';
import 'package:finance_app_ui/ui/widgets/saving_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: SafeArea(
        bottom: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10).r,
                width: double.infinity,
                height: (142 + height).h,
                // color: AppColors.primary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Alexander Michael',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                    const BalanceCard(),
                    Expanded(
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children: const [
                          PaymentCardList(),
                          SavingList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -71.h,
              right: -65.w,
              child: Image.asset(
                'assets/images/card_ellipse.png',
                width: 200.w,
                height: 200.h,
                fit: BoxFit.contain,
              ),
            ),
            // ListView(
            //   physics: const BouncingScrollPhysics(),
            //   shrinkWrap: true,
            //   children: const [
            //     BalanceCard(),
            //     PaymentCardList(),
            //     SavingList(),
            //     SavingList()
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
