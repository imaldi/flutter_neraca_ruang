import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';

import 'file_size_check.dart';

Future<File> fileCompressor(File file, {int? maxSize}) async {
  var fileSize =
      fileSizeCheckInMB(file.readAsBytesSync().lengthInBytes, returnInKB: true);
  print("image size in widget: $fileSize KB");
  var compressedResult;
  var filePath = file.path;
  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  print("outPath: $outPath");
  if (fileSize >= (maxSize ?? 512)) {
    compressedResult = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      outPath,
      quality: 80,
    );
    if (compressedResult != null) {
      var compressedSize = fileSizeCheckInMB(
          compressedResult.readAsBytesSync().lengthInBytes ?? 0);
      if (compressedSize > (maxSize ?? 512)) {
        compressedResult = await fileCompressor(compressedResult);
      }
    }
  }
  return compressedResult ?? file;
}
