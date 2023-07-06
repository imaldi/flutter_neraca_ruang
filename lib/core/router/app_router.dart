import 'package:auto_route/auto_route.dart';
import 'package:flutter_neraca_ruang/presentation/pages/album_foto_page.dart';

import '../../presentation/pages/change_password_page.dart';
import '../../presentation/pages/datum_type_filter_page.dart';
import '../../presentation/pages/edit_profile_page.dart';
import '../../presentation/pages/green_page.dart';
import '../../presentation/pages/infografis_page.dart';
import '../../presentation/pages/jurnal_page.dart';
import '../../presentation/pages/kabar_page.dart';
import '../../presentation/pages/diskusi_page.dart';
import '../../presentation/pages/landing_page.dart';
import '../../presentation/pages/login_page.dart';
import '../../presentation/pages/profile_page.dart';
import '../../presentation/pages/register_page.dart';
import '../../presentation/pages/test_api_page.dart';
import '../../presentation/pages/video_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: TestApiRoute.page, initial: true),
        AutoRoute(page: LandingRoute.page),
        AutoRoute(page: KabarRoute.page),
        AutoRoute(page: JurnalRoute.page),
        AutoRoute(page: InfografisRoute.page),
        AutoRoute(page: VideoRoute.page),
        AutoRoute(page: AlbumFotoRoute.page),
        AutoRoute(page: DiskusiRoute.page),
        AutoRoute(page: GreenRoute.page),
        // TODO nanti semua pakai route yg ini saja
        AutoRoute(page: DatumTypeFilterRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: ChangePasswordRoute.page),
      ];
}
