import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

@RoutePage()
class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: SharpPadding.horizontalPadding16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SharpSpacing.xLarge,
            Text(
              'Welcome back',
              style: context.headlineLarge,
            ),
            SharpSpacing.normal,
          ],
        ),
      ),
    );
  }
}
