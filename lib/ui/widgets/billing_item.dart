import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance_app_ui/helpers/tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_colors.dart';
import '../../models/billing.dart';

class BillingItem extends StatelessWidget {
  const BillingItem({super.key, required this.billing});

  final Billing billing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16).r,
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10).w,
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: HexColor('#0F0D23').withOpacity(0.04),
            offset: const Offset(10, 24),
            blurRadius: 54,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: 48.w,
                height: 48.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  child: CachedNetworkImage(
                    imageUrl: billing.avatar,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    billing.title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: HexColor('#333333'),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Expanded(
                    child: Text(
                      billing.date.toLocal().toString(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: HexColor('#333333'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            handleAmount(billing.billingType, billing.amount),
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
