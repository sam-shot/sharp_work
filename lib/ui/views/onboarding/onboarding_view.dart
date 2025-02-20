import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = IntTween(begin: 0, end: 30).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.white,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                top: 0,
                left: 0,
                child: Transform.translate(
                  offset: Offset(0, -_animation.value.toDouble()),
                  child: Assets.svg.blob1.svg(
                    height: 500,
                  ),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                right: 0,
                bottom: 0,
                child: Transform.translate(
                  offset: Offset(0, _animation.value.toDouble()),
                  child: Assets.svg.blob2.svg(
                    height: 500,
                  ),
                ),
              );
            },
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
                  SharpSpacing.xLarge,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
