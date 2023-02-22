import 'package:animate_do/animate_do.dart';
import 'package:finance_app_ui/common/app_constants.dart';
import 'package:finance_app_ui/common/app_data.dart';
import 'package:finance_app_ui/ui/screens/cards/widgets/add_card.dart';
import 'package:finance_app_ui/ui/widgets/custom_app_bar.dart';
import 'package:finance_app_ui/ui/widgets/dotted_icon_button.dart';
import 'package:finance_app_ui/ui/widgets/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static const routeName = '/cards';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Your Cards', context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27).r,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _cardList(),
            const SizedBox(height: 16),
            DottedIconButton(
              icon: Icons.add,
              text: 'Add Credit Card',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddCard(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _cardList() => ElasticInDown(
        duration: const Duration(milliseconds: 1200),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              PaymentCard(payment: AppData.payments[index]),
          separatorBuilder: (context, index) =>
              AppConstants.sizedBoxHeightNormal,
          itemCount: AppData.payments.length,
        ),
      );
}
