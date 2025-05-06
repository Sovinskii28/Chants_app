import 'package:auto_route/auto_route.dart';
import 'package:molitva_app/features/widgets.dart';
part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter{
  @override
  List<AutoRoute> get routes => [
       // Главный маршрут входа (логин)
    AutoRoute(
      page: MyHomeRoute.page,
      path: '/home',
      initial: true, // Сделайте начальным маршрутом
    ),
    
    // Регистрация
    AutoRoute(
      page: ChantsRoute.page,
      path: '/chants',
    ),
        // Регистрация
    AutoRoute(
      page: PrayersRoute.page,
      path: '/prayers',
    ),
  ];
  
}