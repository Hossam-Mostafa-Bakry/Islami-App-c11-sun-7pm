import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c11_sun_7pm/core/application_theme_manager.dart';
import 'package:islami_app_c11_sun_7pm/layout/layout_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/hadeth/hadeth_details_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/quran/quran_details_view.dart';
import 'package:islami_app_c11_sun_7pm/moduls/splash/splash_view.dart';

// 1- Read Data from assets
// 2- Localization
// 3- Avail Dark Theme
// 4- State Management (Provider)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightThemeData,
      locale: Locale("en"),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayOutView.routeName: (context) => const LayOutView(),
        QuranDetailsView.routName: (context) => const QuranDetailsView(),
        HadithDetailsView.routeName: (context) => const HadithDetailsView(),
      },
    );
  }
}
