import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: Padding(
        padding: SharpPadding.horizontalPadding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SharpSpacing.xxxLarge,
            SharpSpacing.xxxLarge,
            Transform.rotate(
              angle: -pi / 12,
              child: OnboardingBanner(
                label: 'Find your dream Job',
                color: context.yellow,
              ),
            ),
            SharpSpacing.xLarge,
            Transform.rotate(
              angle: pi / 18,
              child: OnboardingBanner(
                label: 'Flexible Job Providers',
                color: context.teal,
                textColor: context.white,
              ),
            ),
            SharpSpacing.large,
            Transform.rotate(
              angle: -pi / 12,
              child: OnboardingBanner(
                label: 'Sharp work updates daily',
                color: context.white,
              ),
            ),
            Spacer(),
            Text(
              'Job search made easy, fast and reliable',
              style: context.headlineLarge.copyWith(
                color: context.white,
              ),
              textAlign: TextAlign.center,
            ),
            SharpSpacing.large,
            MaterialButton(
              onPressed: () {},
              color: context.white,
              minWidth: double.infinity,
              height: 52,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: SharpBorderRadius.radius12,
              ),
              child: Text(
                'Get Started',
                style: context.titleSmall.copyWith(
                  color: context.primaryColor,
                ),
              ),
            ),
            SharpSpacing.large,
          ],
        ),
      ),
    );
  }
}
