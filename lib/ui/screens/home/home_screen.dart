import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_colors.dart';
import '../../widgets/payment_card_list.dart';
import '../../widgets/saving_list.dart';
import '../cards/cards_screen.dart';
import '../home/widgets/header_section.dart';
import '../savings/savings_screen.dart';
import 'widgets/balance_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 330.h, child: _header(context)),
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
        const SliverToBoxAdapter(
          child: PaymentCardList(),
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

  Widget _header(BuildContext context) {
    final height = MediaQuery.of(context).viewPadding.top;
    return Stack(
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
                  _headerLabel(height),
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
    );
  }

  Padding _headerLabel(double height) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: (24 + height).h,
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
          const SizedBox(height: 8),
          Text(
            'Alexander Michael',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
