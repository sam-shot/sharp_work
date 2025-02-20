import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Assets.svg.blob1.svg(
              height: 500,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Assets.svg.blob2.svg(
              height: 500,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: SizedBox(),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: context.primaryColor.withAlpha(150),
            ),
            child: Padding(
              padding: SharpPadding.horizontalPadding16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SharpSpacing.xxxLarge,
                  SharpSpacing.large,
                  SharpSpacing.xxxLarge,
                  Transform.rotate(
                    angle: -pi / 12,
                    child: OnboardingBanner(
                      label: 'Find your dream Job',
                      color: context.yellow,
                    ),
                  ),
                  SharpSpacing.large,
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
          ),
        ],
      ),
    );
  }
}
