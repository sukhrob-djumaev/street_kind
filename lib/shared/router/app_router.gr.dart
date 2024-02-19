// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:street_kind/features/exchange/pages/exchange_page.dart' as _i2;
import 'package:street_kind/features/exchange/pages/exchange_t_shirt_page.dart'
    as _i3;
import 'package:street_kind/features/feed/pages/confirm_feed_page.dart' as _i1;
import 'package:street_kind/features/feed/pages/scan_feeder_qr_page.dart'
    as _i8;
import 'package:street_kind/features/leaderboard/pages/leaderborad_page.dart'
    as _i4;
import 'package:street_kind/features/main/pages/main_page.dart' as _i5;
import 'package:street_kind/features/map/pages/map_page.dart' as _i6;
import 'package:street_kind/features/onboarding/onboarding_page.dart' as _i7;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ConfirmFeedRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ConfirmFeedPage(),
      );
    },
    ExchangeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ExchangePage(),
      );
    },
    ExchangeTShirtRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ExchangeTShirtPage(),
      );
    },
    LeaderboardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LeaderboardPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MapPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnboardingPage(),
      );
    },
    ScanFeederQRRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ScanFeederQRPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ConfirmFeedPage]
class ConfirmFeedRoute extends _i9.PageRouteInfo<void> {
  const ConfirmFeedRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ConfirmFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmFeedRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ExchangePage]
class ExchangeRoute extends _i9.PageRouteInfo<void> {
  const ExchangeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ExchangeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExchangeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ExchangeTShirtPage]
class ExchangeTShirtRoute extends _i9.PageRouteInfo<void> {
  const ExchangeTShirtRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ExchangeTShirtRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExchangeTShirtRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LeaderboardPage]
class LeaderboardRoute extends _i9.PageRouteInfo<void> {
  const LeaderboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LeaderboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeaderboardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MapPage]
class MapRoute extends _i9.PageRouteInfo<void> {
  const MapRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i9.PageRouteInfo<void> {
  const OnboardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ScanFeederQRPage]
class ScanFeederQRRoute extends _i9.PageRouteInfo<void> {
  const ScanFeederQRRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ScanFeederQRRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanFeederQRRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
