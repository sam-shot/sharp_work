import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sharp_work/core/routes/router.gr.dart';
import 'package:sharp_work/ui/ui.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  double bannerRightShift = 0;
  double bannerLeftShift = 0;

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

    Future(() {
      setState(() {
        bannerRightShift = -0.04;
        bannerLeftShift = 0.04;
      });
    });
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
                    height: context.height,
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
                    height: context.height,
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
              color: context.primaryColor.withAlpha(200),
            ),
            child: Padding(
              padding: SharpPadding.horizontalPadding16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SharpSpacing.xxxLarge,
                  SharpSpacing.large,
                  SharpSpacing.xxxLarge,
                  AnimatedRotation(
                    duration: Duration(seconds: 1),
                    turns: bannerRightShift,
                    child: OnboardingBanner(
                      label: 'Find your dream Job',
                      color: context.yellow,
                    ),
                  ),
                  SharpSpacing.large,
                  AnimatedRotation(
                    duration: Duration(seconds: 1),
                    turns: bannerLeftShift,
                    child: OnboardingBanner(
                      label: 'Flexible Job Providers',
                      color: context.teal,
                      textColor: context.white,
                    ),
                  ),
                  SharpSpacing.large,
                  AnimatedRotation(
                    duration: Duration(seconds: 1),
                    turns: bannerRightShift,
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
                  PrimaryButton(
                    label: 'Get Started',
                    onTap: () {
                      context.router.push(const AuthRoute());
                    },
                    textColor: context.primaryColor,
                    color: context.white,
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
