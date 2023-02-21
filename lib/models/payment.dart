import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class Payment {
  final String cardNo;
  final double balance;

  const Payment({
    required this.cardNo,
    required this.balance,
  });
}
