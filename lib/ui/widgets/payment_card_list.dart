import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_data.dart';
import 'payment_card.dart';

class PaymentCardList extends StatelessWidget {
  const PaymentCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 24).r,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => PaymentCard(
          payment: AppData.payments[index],
        ),
        separatorBuilder: (context, index) {
          return SizedBox(width: 16.w);
        },
        itemCount: AppData.payments.length,
      ),
    );
  }
}
