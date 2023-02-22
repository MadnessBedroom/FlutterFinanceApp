import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_data.dart';
import '../../widgets/billing_item.dart';
import '../../widgets/custom_app_bar.dart';

class HistoryScreen extends HookWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: 3);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'History',
        context: context,
        showLeading: false,
      ),
      body: SafeArea(
        child: ElasticInDown(
          duration: const Duration(milliseconds: 1000),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24).r,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                BillingItem(billing: AppData.billings[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: AppData.billings.length,
          ),
        ),
      ),
    );
  }
}
