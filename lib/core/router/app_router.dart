import 'package:auto_route/auto_route.dart';
import 'package:flutter_neraca_ruang/presentation/pages/album_foto_page.dart';

import '../../presentation/pages/infografis_page.dart';
import '../../presentation/pages/jurnal_page.dart';
import '../../presentation/pages/kabar_page.dart';
import '../../presentation/pages/landing_page.dart';
import '../../presentation/pages/test_api_page.dart';
import '../../presentation/pages/video_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: TestApiRoute.page),
        AutoRoute(page: LandingRoute.page, initial: true),
        AutoRoute(page: KabarRoute.page),
        AutoRoute(page: JurnalRoute.page),
        AutoRoute(page: InfografisRoute.page),
        AutoRoute(page: VideoRoute.page),
        AutoRoute(page: AlbumFotoRoute.page),
      ];
}
