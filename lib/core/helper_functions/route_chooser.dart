import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';

import '../consts/datum_type.dart';

PageRouteInfo routeChooser(String tipe) {
  switch (tipe) {
    case "kabar":
      return const KabarRoute();
    case "jurnal":
      return const JurnalRoute();
    case "infografis":
      return const InfografisRoute();
    case "video":
      return const VideoRoute();
    case "foto":
      return const AlbumFotoRoute();
    default:
      return LandingRoute();
  }
}
