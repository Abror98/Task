import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:task/core/local_storage/restaurant_hive.dart';

class AsyncAppDependencies {
  final RestaurantHive storage;
  final List<LocalizationsDelegate> localeDelegates;

  const AsyncAppDependencies({
    required this.localeDelegates,
    required this.storage,
  });

  static Future<AsyncAppDependencies> obtain(RestaurantHive hive) async {
    return AsyncAppDependencies(
      localeDelegates: <LocalizationsDelegate>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      storage: hive,
    );
  }
}
