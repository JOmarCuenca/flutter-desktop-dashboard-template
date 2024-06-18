import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:desktop_dashboard_template/generated/l10n.dart';
import 'package:desktop_dashboard_template/utils/logging.dart';

import 'routes/index.dart';
import 'theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final locale = Locale(Platform.localeName);

  logIfDebugging(locale);

  initializeDateFormatting(Platform.localeName).then((_) => logIfDebugging("Date Formatting enabled"));
  S.load(locale).then((value) => logIfDebugging("Locale texts loaded"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: kDebugMode,
      title: 'AutoSat Provisioner UI',
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      themeMode: ThemeMode.system,
      routes: routes,
      initialRoute: '/',
    );
  }
}
