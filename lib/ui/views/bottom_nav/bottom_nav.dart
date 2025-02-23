import 'package:auto_route/auto_route.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sharp_work/core/core.dart';
import 'package:sharp_work/ui/ui.dart';

@RoutePage()
class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int currentIndex() {
    final path = locator<SharpRouter>().currentPath;
    if (path.endsWith('home')) return 0;
    if (path.endsWith('saved')) return 1;
    return 2;
  }

  void navigate(int value) {
    final router = locator<SharpRouter>();
    if (value == 0) {
      router.replace(HomeRoute());
    } else if (value == 1) {
      router.replace(SavedRoute());
    } else {
      router.replace(ProfileRoute());
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.white,
      body: AutoRouter(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: context.white,
        elevation: 0,
        currentIndex: currentIndex(),
        selectedFontSize: 14.r,
        unselectedFontSize: 13.r,
        iconSize: 25.r,
        selectedItemColor: context.primaryColor,
        unselectedItemColor: context.grey,
        onTap: (value) => navigate(value),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(IconsaxOutline.home_1),
            activeIcon: Icon(IconsaxBold.home_1),
          ),
          BottomNavigationBarItem(
            label: 'Saved',
            icon: Icon(IconsaxOutline.tag),
            activeIcon: Icon(IconsaxBold.tag),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(IconsaxOutline.profile_circle),
            activeIcon: Icon(IconsaxBold.profile_circle),
          ),
        ],
      ),
    );
  }
}
