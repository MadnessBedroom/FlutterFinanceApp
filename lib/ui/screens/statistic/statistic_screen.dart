import 'package:finance_app_ui/ui/widgets/payment_card_list.dart';
import 'package:finance_app_ui/ui/widgets/saving_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_colors.dart';
import '../home/widgets/balance_card.dart';
import '../home/widgets/header_section.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 330.h, child: _header()),
            ),
            const SliverToBoxAdapter(
              child: HeaderSection(leftText: 'Your Cards'),
            ),
            const SliverToBoxAdapter(
              child: PaymentCardList(),
            ),
            const SliverToBoxAdapter(
              child: HeaderSection(leftText: 'Your Saving'),
            ),
            const SliverToBoxAdapter(
              child: SavingList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Expanded(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 192.h,
                color: AppColors.primary,
                child: Stack(
                  children: [
                    Positioned(
                      top: -71.h,
                      right: -64.w,
                      width: 200.w,
                      height: 200.h,
                      child: Image.asset('assets/images/card_ellipse.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 24,
                      ).r,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 140.h,
            child: const BalanceCard(),
          ),
        ],
      ),
    );
  }
}
