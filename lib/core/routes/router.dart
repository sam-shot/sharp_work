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
      ];
}
