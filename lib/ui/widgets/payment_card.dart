import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_colors.dart';
import '../../models/payment.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.payment});

  final Payment payment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: SizedBox(
        width: 304.w,
        height: 200.h,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: -156 / 2,
              left: -131 / 2,
              child: Image.asset(
                'assets/images/card_rectangle.png',
                width: 131.w,
                height: 156.h,
              ),
            ),
            Positioned(
              top: 112.h,
              left: 194.w,
              child: Image.asset(
                'assets/images/card_ellipse.png',
                width: 142.w,
                height: 142.h,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 24).r,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Payment Card',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 16,
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 72.h - 24,
                    left: 0,
                    child: Text(
                      payment.cardNo,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: HexColor('#FAF9FF'),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '\$${payment.balance}0',
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: HexColor('#FAF9FF'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '12/24',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
