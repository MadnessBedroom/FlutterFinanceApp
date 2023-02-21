import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_constants.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_rounded_button.dart';
import 'add_card_text_form_filed.dart';
import 'input_helper_text.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Add Card', context: context),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24).r,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputHelperText(data: 'Card Number'),
                AppConstants.sizedBoxHeightNormal,
                addCardTextFormFiled(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10).r,
                    child: Image.asset(
                      'assets/icons/Card.png',
                      width: 46.w,
                      height: 32.h,
                    ),
                  ),
                ),
                AppConstants.sizedBoxTextAndInput,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputHelperText(data: 'Expired Date'),
                          AppConstants.sizedBoxHeightNormal,
                          addCardTextFormFiled(),
                        ],
                      ),
                    ),
                    AppConstants.sizedBoxWidthNormal,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputHelperText(data: 'CVC/CVV'),
                          AppConstants.sizedBoxHeightNormal,
                          addCardTextFormFiled(),
                        ],
                      ),
                    ),
                  ],
                ),
                AppConstants.sizedBoxTextAndInput,
                InputHelperText(data: 'Cardholder Name'),
                AppConstants.sizedBoxTextAndInput,
                addCardTextFormFiled(),
                AppConstants.sizedBoxTextAndInput,
                Text(
                  'Billing Address',
                  style: TextStyle(
                    color: HexColor('#333333'),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                AppConstants.sizedBoxTextAndInput,
                InputHelperText(data: 'Address Line 1'),
                AppConstants.sizedBoxTextAndInput,
                addCardTextFormFiled(),
                AppConstants.sizedBoxTextAndInput,
                InputHelperText(data: 'Address Line 2'),
                AppConstants.sizedBoxTextAndInput,
                addCardTextFormFiled(),
                const SizedBox(height: 56),
                CustomRoundedButton(border: false, lable: 'Save Card'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
