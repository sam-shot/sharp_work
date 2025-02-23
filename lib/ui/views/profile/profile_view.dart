import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sharp_work/ui/ui.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.white,
        title: Text(
          'Profile',
          style: context.titleSmall,
        ),
      ),
      body: SingleChildScrollView(
        padding: SharpPadding.horizontalPadding20,
        child: Column(
          children: [
            SharpSpacing.xxLarge,
            ProfileCard(),
          ],
        ),
      ),
    );
  }
}
