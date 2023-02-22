import 'package:faker/faker.dart';
import 'package:finance_app_ui/helpers/enums.dart';

String handleAmount(BillingType type, double input) {
  if (type == BillingType.income) {
    return '+\$${input}0';
  }
  return '-\$${input}0';
}

String getAmountAvatar() {
  return faker.image.image(random: true, keywords: ['people']);
}

String getRandonName() =>
    '${faker.person.lastName()} ${faker.person.firstName()}';
