// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:street_kind/features/feed/pages/confirm_feed_page.dart' as _i1;
import 'package:street_kind/features/feed/pages/scan_feeder_qr_page.dart'
    as _i6;
import 'package:street_kind/features/leaderboard/pages/leaderborad_page.dart'
    as _i2;
import 'package:street_kind/features/main/pages/main_page.dart' as _i3;
import 'package:street_kind/features/map/pages/map_page.dart' as _i4;
import 'package:street_kind/features/onboarding/onboarding_page.dart' as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    ConfirmFeedRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ConfirmFeedPage(),
      );
    },
    LeaderboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LeaderboardPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MapPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OnboardingPage(),
      );
    },
    ScanFeederQRRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ScanFeederQRPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ConfirmFeedPage]
class ConfirmFeedRoute extends _i7.PageRouteInfo<void> {
  const ConfirmFeedRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ConfirmFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmFeedRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LeaderboardPage]
class LeaderboardRoute extends _i7.PageRouteInfo<void> {
  const LeaderboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LeaderboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeaderboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MapPage]
class MapRoute extends _i7.PageRouteInfo<void> {
  const MapRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnboardingPage]
class OnboardingRoute extends _i7.PageRouteInfo<void> {
  const OnboardingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ScanFeederQRPage]
class ScanFeederQRRoute extends _i7.PageRouteInfo<void> {
  const ScanFeederQRRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ScanFeederQRRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanFeederQRRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
