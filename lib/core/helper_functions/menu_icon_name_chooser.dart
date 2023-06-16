import 'package:flutter_neraca_ruang/core/consts/assets.dart';

import '../consts/datum_type.dart';

String menuIconNameChooser(String tipe, {bool isGreenMode = false}) {
  // return tipe == "kabar"
  //     ? iconKabar
  //     : tipe == "jurnal"
  //         ? iconJurnal
  //         : tipe == "infografis"
  //             ? iconInfografis
  //             : tipe == "video"
  //                 ? iconVideo
  //                 : tipe == "foto"
  //                     ? iconFoto
  //                     : iconError;

  switch (tipe) {
    case "kabar":
      return isGreenMode ? iconKabar2 : iconKabar;
    case "jurnal":
      return isGreenMode ? iconJurnal2 : iconJurnal;
    case "infografis":
      return isGreenMode ? iconInfografis2 : iconInfografis;
    case "video":
      return isGreenMode ? iconVideo2 : iconVideo;
    case "foto":
      return isGreenMode ? iconFoto2 : iconFoto;
    default:
      return iconError;
  }
}
