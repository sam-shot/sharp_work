import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sharp_work/core/core.dart';
import 'package:sharp_work/ui/ui.dart';

void main() {
  setup();
  runApp(
    ProviderScope(
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        return MaterialApp.router(
          theme: SharpTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: locator<SharpRouter>().config(),
        );
      },
    );
  }
}
