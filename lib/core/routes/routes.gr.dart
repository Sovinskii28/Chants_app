

part of 'routes.dart';

/// generated route for
/// [ChantsScreen]
class ChantsRoute extends PageRouteInfo<void> {
  const ChantsRoute({List<PageRouteInfo>? children})
    : super(ChantsRoute.name, initialChildren: children);

  static const String name = 'ChantsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChantsScreen();
    },
  );
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
    : super(MyHomeRoute.name, initialChildren: children);

  static const String name = 'MyHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyHomePage();
    },
  );
}

/// generated route for
/// [PrayersScreen]
class PrayersRoute extends PageRouteInfo<void> {
  const PrayersRoute({List<PageRouteInfo>? children})
    : super(PrayersRoute.name, initialChildren: children);

  static const String name = 'PrayersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PrayersScreen();
    },
  );
}
