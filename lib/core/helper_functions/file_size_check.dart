int fileSizeCheckInMB(int fileSizeInByte, {returnInKB = false}) {
  final kb = fileSizeInByte ~/ 1024;
  if (returnInKB) return kb;
  final mb = kb ~/ 1024;
  return mb;
}
