import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

Future uploadImageToAPI(File? image) async {
  return MultipartFile.fromFile(image!.path,
      filename: image.path.split('/').last);
}

imageuploadcamer() async {
  final XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
  if (file != null) {
    return File(file.path);
  } else {
    return null;
  }
}

imageuploadgallery() async {
  final XFile? file = await ImagePicker().pickImage(
    source: ImageSource.gallery,
  );
  if (file != null) {
    return File(file.path);
  } else {
    return null;
  }
}

Future<List<MultipartFile>> uploadMultiImageSToAPI(List<File> images) async {
  List<MultipartFile> da = [];
  for (var item in images) {
    String filename = item.path.split('/').last;

    da.add(await MultipartFile.fromFile(item.path, filename: filename));
  }
  return da;
}

// fillle([issvg = false]) async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions:
//           issvg ? ["svg", "SVG"] : ["png", "PNG" "jpg", "jpeg", "gif"]);

//   if (result != null) {
//     return File(result.files.single.path!);
//   } else {
//     return null;
//   }
// }
