import 'package:eks_khedamtresan/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      routerConfig: Routes.routes,
      //TODO: add Theme here
      //theme: ,
    );
  }
}

