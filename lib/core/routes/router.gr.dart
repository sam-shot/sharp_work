// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:sharp_work/ui/views/auth/auth_view.dart' as _i1;
import 'package:sharp_work/ui/views/bottom_nav/bottom_nav.dart' as _i2;
import 'package:sharp_work/ui/views/home/home_view.dart' as _i3;
import 'package:sharp_work/ui/views/onboarding/onboarding_view.dart' as _i4;
import 'package:sharp_work/ui/views/profile/profile_view.dart' as _i5;
import 'package:sharp_work/ui/views/saved/saved_view.dart' as _i6;

/// generated route for
/// [_i1.AuthView]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthView();
    },
  );
}

/// generated route for
/// [_i2.BottomNavView]
class BottomNavRoute extends _i7.PageRouteInfo<void> {
  const BottomNavRoute({List<_i7.PageRouteInfo>? children})
    : super(BottomNavRoute.name, initialChildren: children);

  static const String name = 'BottomNavRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.BottomNavView();
    },
  );
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeView();
    },
  );
}

/// generated route for
/// [_i4.OnboardingView]
class OnboardingRoute extends _i7.PageRouteInfo<void> {
  const OnboardingRoute({List<_i7.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.OnboardingView();
    },
  );
}

/// generated route for
/// [_i5.ProfileView]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfileView();
    },
  );
}

/// generated route for
/// [_i6.SavedView]
class SavedRoute extends _i7.PageRouteInfo<void> {
  const SavedRoute({List<_i7.PageRouteInfo>? children})
    : super(SavedRoute.name, initialChildren: children);

  static const String name = 'SavedRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SavedView();
    },
  );
}
