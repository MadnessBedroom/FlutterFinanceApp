import 'package:finance_app_ui/ui/screens/cards/cards_screen.dart';
import 'package:finance_app_ui/ui/screens/savings/savings_screen.dart';
import 'package:finance_app_ui/ui/widgets/payment_card_list.dart';
import 'package:finance_app_ui/ui/widgets/saving_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_colors.dart';
import '../home/widgets/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 330.h, child: _header()),
        ),
        SliverToBoxAdapter(
          child: HeaderSection(
            leftText: 'Your Cards',
            onPressed: () => Navigator.pushNamed(
              context,
              CardsScreen.routeName,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 26.h),
        ),
        const SliverToBoxAdapter(
          child: PaymentCardList(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 26.h),
        ),
        SliverToBoxAdapter(
          child: HeaderSection(
            leftText: 'Your Saving',
            onPressed: () => Navigator.pushNamed(
              context,
              SavingsScreen.routeName,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SavingList(),
        ),
      ],
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
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   top: 140.h,
          //   child: const BalanceCard(),
          // ),
        ],
      ),
    );
  }
}
