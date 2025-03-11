import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:task/core/theme/theme_data.dart';

import 'core/di/app_injector.dart';
import 'core/di/injection_module.dart';
import 'core/route/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

// Make sure status bar is shown
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

  final injector = AppInjector.I;
  final injectionModule = AppInjectionModule();
  await injectionModule.registerDependencies(injector: injector);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: false,
      builder: (context) => KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
        ],
        child: OverlaySupport(
          child: MaterialApp.router(
            routerConfig: AppNavigation.router,
            title: 'Task',
            debugShowCheckedModeBanner: false,
            theme: defaultTheme,
          ),
        ),
      ),
    );
  }
}
