import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common_9615/flutter_common_9615.dart';
import 'routers.dart';

Future<void> main() async {
  // init localization
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('la'),
      ],
      path: 'packages/feature_common_9615/lib/assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter micro 9615',
      theme: ThemeData(
        snackBarTheme: SnackBarThemeData(
          elevation: 0,
          backgroundColor: FlutterMicroTheme.kPrimaryColor10,
          contentTextStyle: FlutterMicroTheme.defaultStyle.copyWith(
            fontSize: 16,
            letterSpacing: 0,
            height: 22 / 16,
            color: FlutterMicroTheme.kPrimaryColor,
          ),      
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: FlutterMicroTheme.white,
      ),
    );
  }
}
