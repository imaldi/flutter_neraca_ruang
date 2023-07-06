import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

// import 'package:meta/meta.dart';

part 'ImagePickerCubitState.dart';

class ImagePickerCubit extends Cubit<ImagePickerCubitState> {
  ImagePickerCubit() : super(ImagePickerCubitState(isInitialized: false));
  initLocalImagePickerState(
      // storedImage,
      {bool isEnabled = true,
      String? imageURL,
      String? title,
      String? localImageURL}) async {
    emit(ImagePickerCubitState(
      isEnabled: isEnabled,
      imageURL: imageURL,
      title: title,
      localImageURL: localImageURL,
    ));
  }

  void updateState(
      {XFile? storedImage,
      bool? isEnabled,
      String? imageURL,
      String? title,
      String? localImageURL}) {
    emit(ImagePickerCubitState(
      storedImage: storedImage,
      isEnabled: isEnabled ?? true,
      imageURL: imageURL,
      title: title ?? state.title,
      localImageURL: localImageURL,
    ));
  }
}
