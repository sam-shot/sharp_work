import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: SharpTheme.lightTheme,
      home: OnboardingView(),
    );
  }
}
