import 'package:auto_route/auto_route.dart';
import 'package:sharp_work/core/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class SharpRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          initial: true,
        ),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(
          path: '/main',
          page: BottomNavRoute.page,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeRoute.page,
              initial: true,
              type: RouteType.custom(
                durationInMilliseconds: 500,
                transitionsBuilder: TransitionsBuilders.fadeIn,
              ),
            ),
            AutoRoute(
              path: 'saved',
              page: SavedRoute.page,
              type: RouteType.custom(
                durationInMilliseconds: 500,
                transitionsBuilder: TransitionsBuilders.fadeIn,
              ),
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
              type: RouteType.custom(
                durationInMilliseconds: 500,
                transitionsBuilder: TransitionsBuilders.fadeIn,
              ),
            ),
          ],
        ),
      ];
}
