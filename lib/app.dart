import 'package:eks_khedamtresan/core/resources/theme/app_theme.dart';
import 'package:eks_khedamtresan/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/resources/theme/app_theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _lightTheme = LightAppThemeData();

  static final _darkTheme = DarkAppThemeData();

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      lightTheme: _lightTheme,
      darkTheme: _darkTheme,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: kDebugMode,
        // localizationsDelegates: AppLocalizations.localizationsDelegates,
        // supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale("en", "EN"),
        routerConfig: Routes.routes,
        //TODO: add Theme here
        //theme: ,
      ),
    );
  }
}

