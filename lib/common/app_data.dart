import 'package:faker/faker.dart';
import 'package:finance_app_ui/helpers/tools.dart';

import '../helpers/enums.dart';
import '../models/billing.dart';
import '../models/onboarding_item.dart';
import '../models/payment.dart';
import '../models/saving.dart';
import 'app_assets.dart';

class AppData {
  const AppData._();

  static List<OnboardingItemMo> onboardingItems = [
    const OnboardingItemMo(
      image: AppAssets.onboarding1,
      title: AppAssets.onboarding1_title,
      subtitle: AppAssets.onboarding1_subtitle,
    ),
    const OnboardingItemMo(
      image: AppAssets.onboarding2,
      title: AppAssets.onboarding2_title,
      subtitle: AppAssets.onboarding2_subtitle,
    ),
    const OnboardingItemMo(
      image: AppAssets.onboarding3,
      title: AppAssets.onboarding3_title,
      subtitle: AppAssets.onboarding3_subtitle,
    ),
  ];

  static List<Payment> payments = [
    const Payment(cardNo: '2298 1268 3398 9874', balance: 2885.00),
    const Payment(cardNo: '2298 1268 3398 9875', balance: 3860.00),
    const Payment(cardNo: '2298 1268 3398 9876', balance: 1990.00),
    const Payment(cardNo: '2298 1268 3398 9877', balance: 2090.00),
  ];

  static List<Saving> savings = [
    const Saving(
      title: 'Buy Playstation',
      description: 'Slim 1 TB 56 Games',
      progress: 80,
      icon: 'assets/icons/104.png',
      status: SavingStatus.onProgress,
    ),
    const Saving(
      title: 'Buy Car Remote',
      description: 'Mercedez Benz 001',
      progress: 70,
      icon: 'assets/icons/105.png',
      status: SavingStatus.onProgress,
    ),
    const Saving(
      title: 'Buy Bicycle',
      description: 'Mountain bike R7',
      progress: 50,
      icon: 'assets/icons/106.png',
      status: SavingStatus.onProgress,
    ),
    const Saving(
      title: 'Buy Mini Vespa',
      description: 'Mercedez Benz 001',
      progress: 100,
      icon: 'assets/icons/107.png',
      status: SavingStatus.done,
    ),
    const Saving(
      title: 'Buy Barbie Doll',
      description: 'One Set Purple',
      progress: 100,
      icon: 'assets/icons/108.png',
      status: SavingStatus.done,
    ),
  ];

  static List<Billing> billings = [
    /// send
    Billing(
      title: getRandonName(),
      amount: 123,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.send,
    ),
    Billing(
      title: getRandonName(),
      amount: 320,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.expenses,
      historyType: HistoryType.send,
    ),
    Billing(
      title: getRandonName(),
      amount: 129,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.send,
    ),
    Billing(
      title: getRandonName(),
      amount: 256,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.send,
    ),
    Billing(
      title: getRandonName(),
      amount: 289,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.expenses,
      historyType: HistoryType.send,
    ),

    /// request
    Billing(
      title: getRandonName(),
      amount: 137,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.request,
    ),

    Billing(
      title: getRandonName(),
      amount: 137,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.request,
    ),

    Billing(
      title: getRandonName(),
      amount: 137,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.request,
    ),

    Billing(
      title: getRandonName(),
      amount: 137,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.request,
    ),

    Billing(
      title: getRandonName(),
      amount: 137,
      date: faker.date.dateTime(),
      avatar: getAmountAvatar(),
      billingType: BillingType.income,
      historyType: HistoryType.request,
    ),
  ];
}
