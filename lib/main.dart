import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sharp_work/core/core.dart';
import 'package:sharp_work/ui/ui.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _sharpRouter = SharpRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return MaterialApp.router(
          theme: SharpTheme.lightTheme,
          routerConfig: _sharpRouter.config(),
        );
      },
    );
  }
}
