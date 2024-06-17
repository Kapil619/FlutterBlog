import 'package:flutter/material.dart';
import 'package:flutterblog/core/theme/theme.dart';
import 'package:flutterblog/features/auth/presentation/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Blog',
      theme: AppTheme.darkThemeMode,
      home: const Login(),
    );
  }
}
