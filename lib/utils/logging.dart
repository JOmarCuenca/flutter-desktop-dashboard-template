import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/foundation.dart';

void logIfDebugging(
  Object? o, {
  int level = 0,
  Object? error,
  StackTrace? trace,
}) {
  if ([
        o,
        error,
        trace,
      ].any((obj) => obj != null) &&
      kDebugMode) {
    dev.log(
      (o ?? "Empty log").toString(),
      time: DateTime.now(),
      level: max(0, min(level, 2000)),
      error: error,
      stackTrace: trace,
    );
  }
}
