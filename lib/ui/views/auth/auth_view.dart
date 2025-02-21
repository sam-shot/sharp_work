import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

part './sections/login.dart';
part './sections/signup.dart';

@RoutePage()
class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: SharpPadding.horizontalPadding16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SharpSpacing.xLarge,
              Container(
                padding: SharpPadding.padding6,
                decoration: BoxDecoration(
                  borderRadius: SharpBorderRadius.radius40,
                  color: context.lightGrey,
                ),
                child: SizedBox(
                  height: SharpDimensions.size40,
                  width: context.width / 1.5,
                  child: TabBar(
                    tabs: const [
                      Tab(text: 'Login'),
                      Tab(text: 'Sign up'),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: SharpBorderRadius.radius20 +
                          SharpBorderRadius.radius6,
                      color: context.primaryColor,
                    ),
                    indicatorWeight: 0,
                    dividerHeight: 0,
                    labelColor: context.white,
                    labelStyle: context.labelMedium,
                    unselectedLabelStyle: context.bodyMedium.copyWith(
                      color: context.grey,
                    ),
                  ),
                ),
              ),
              SharpSpacing.xLarge,
              Expanded(
                child: TabBarView(
                  children: [
                    Login(),
                    SignUp(),
                  ],
                ),
              ),
              SharpSpacing.xLarge,
            ],
          ),
        ),
      ),
    );
  }
}
