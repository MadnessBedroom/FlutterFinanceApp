import '../helpers/enums.dart';

class Billing {
  final String title;
  final double amount;
  final DateTime date;
  final String avatar;
  final BillingType billingType;
  final HistoryType historyType;

  const Billing({
    required this.title,
    required this.amount,
    required this.date,
    required this.avatar,
    required this.billingType,
    required this.historyType,
  });
}
