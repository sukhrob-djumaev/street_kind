import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, page: OnboardingRoute.page),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: LeaderboardRoute.page, initial: true),
            AutoRoute(page: MapRoute.page),
          ],
        ),
        AutoRoute(page: ScanFeederQRRoute.page),
        AutoRoute(page: ConfirmFeedRoute.page)
      ];
}
