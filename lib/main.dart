import 'package:demo_app/app.dart';
import 'package:demo_app/di/injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(const App());
}
