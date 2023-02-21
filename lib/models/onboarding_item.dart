import 'package:flutter/foundation.dart';

@immutable
class OnboardingItemMo {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingItemMo({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
