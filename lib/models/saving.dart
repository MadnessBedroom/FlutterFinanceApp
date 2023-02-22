import 'package:flutter/foundation.dart';

import '../helpers/enums.dart';

@immutable
class Saving {
  final String title;
  final String description;
  final int progress;
  final String icon;
  final SavingStatus status;

  const Saving({
    required this.title,
    required this.description,
    required this.progress,
    required this.icon,
    required this.status,
  });
}
