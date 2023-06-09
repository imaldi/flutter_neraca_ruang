import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/landing_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: LandingRoute.page)
      ];
}
