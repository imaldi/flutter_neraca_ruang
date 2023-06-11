import 'package:flutter_neraca_ruang/core/consts/assets.dart';

import '../consts/datum_type.dart';

String menuIconNameChooser(String tipe) {
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
      return iconKabar;
    case "jurnal":
      return iconJurnal;
    case "infografis":
      return iconInfografis;
    case "video":
      return iconVideo;
    case "foto":
      return iconFoto;
    default:
      return iconError;
  }
}
