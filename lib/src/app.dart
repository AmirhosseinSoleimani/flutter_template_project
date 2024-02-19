import 'package:eks_khedamtresan/src/core/resources/theme/app_theme.dart';
import 'package:eks_khedamtresan/src/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/resources/theme/app_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale("en", "US"),
        routerConfig: Routes.routes,
      ),
    );
  }
}

