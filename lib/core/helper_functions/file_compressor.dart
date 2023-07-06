import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as path;
import 'file_size_check.dart';

Future<XFile?> fileCompressor(XFile? file, {int? maxSize}) async {
  if (file == null) return null;
  var uint8Data = await file.readAsBytes();
  var fileSize = fileSizeCheckInMB(uint8Data.length, returnInKB: true);
  print("image size in widget: $fileSize KB");
  XFile? compressedResult;
  var filePath = file.path;
  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  print("outPath: $outPath");
  if (fileSize >= (maxSize ?? 512)) {
    final String absolutePath = path.absolute(file.path);
    compressedResult = await FlutterImageCompress.compressAndGetFile(
      absolutePath,
      outPath,
      quality: 80,
    );
    if (compressedResult != null) {
      var lengthInBytes = await compressedResult.readAsBytes();
      var compressedSize = fileSizeCheckInMB(lengthInBytes.length);
      if (compressedSize > (maxSize ?? 512)) {
        compressedResult = await fileCompressor(compressedResult);
      }
    }
  }
  return compressedResult ?? file;
}
