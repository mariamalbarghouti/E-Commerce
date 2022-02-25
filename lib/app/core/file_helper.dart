import 'dart:io';

extension FileX on File {
  // File Name  With Extention "fileName.png"
  String get fileNameWithExtention => path.split("/").last;
  // File Name Without Extention "fileName"
  String get fileNameWithoutExtention {
    String extentionToBeRemoved = fileNameWithExtention.split(".").last;
    return fileNameWithExtention.replaceAll(".$extentionToBeRemoved", "");
  }
}
