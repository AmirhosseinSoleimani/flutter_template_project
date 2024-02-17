import 'package:eks_khedamtresan/app.dart';
import 'package:eks_khedamtresan/di/di_setup.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const App());
}
