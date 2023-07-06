import 'dart:io';

// import 'package:file_picker/file_picker.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/consts/colors.dart';
import '../../../core/consts/sizes.dart';
import '../../../core/helper_functions/file_compressor.dart';
import '../../../core/helper_functions/file_size_check.dart';
import '../../../core/helper_functions/media_query/media_query_helpers.dart';
import '../my_confirm_dialog/my_confirm_dialog.dart';
import '../rounded_container.dart';
import 'widget_cubit/ImagePickerCubit.dart';

// bool _checkIsEmptyDefault() {
//   return true;
// }

class MyImagePickerWidget extends StatefulWidget {
  MyImagePickerWidget({
    Key? key,
    this.functionCallbackSetImageFilePath,
    this.isEnabled = true,
    this.imageURL,
    this.title,
    this.localImageURL,
    this.defaultImagePlaceholder,
    this.customChild,
    // this.checkIsEmpty = _checkIsEmptyDefault
  }) : super(key: key);

  // File? issuerImage;
  // final void Function(int, File?) setImageFilePath;
  final Function(int, XFile?)? functionCallbackSetImageFilePath;
  // bool Function() checkIsEmpty;
  bool isEnabled;
  String? imageURL;
  String? localImageURL;
  String? title;
  Widget? defaultImagePlaceholder;
  Widget? customChild;

  @override
  _MyImagePickerWidgetState createState() => _MyImagePickerWidgetState();
}

class _MyImagePickerWidgetState extends State<MyImagePickerWidget> {
  late XFile? _storedImage;

  // File ;
  Future _takePicture(BuildContext context, ImagePickerCubitState state) async {
    ImagePicker imagePicker = ImagePicker();
    var cubit = context.read<ImagePickerCubit>();

    XFile? pickedFile = await imagePicker
        .pickImage(source: ImageSource.camera)
        .whenComplete(() {
      // setState(() {});
      context.router.pop();
      // Navigator.of(context).pop();
    });
    print("pickedFile path : ${pickedFile?.path}");

    _storedImage = pickedFile;
    // print(
    //     "image size in widget: ${fileSizeCheckInMB(_storedImage.readAsBytesSync().lengthInBytes)} MB");

    _storedImage = await fileCompressor(_storedImage);
    // print(
    //     "image size after Compressed: ${fileSizeCheckInMB(_storedImage.readAsBytesSync().lengthInBytes)} MB");

    cubit.updateState(storedImage: _storedImage);
    widget.functionCallbackSetImageFilePath?.call(69, _storedImage);
    // widget.setImageFilePath(0,_storedImage);
    // print("_storedImage path : ${_storedImage.path}");
    cubit.updateState(storedImage: _storedImage);

    FocusScope.of(context).unfocus();
  }

  Future _pickFile(BuildContext context, ImagePickerCubitState state) async {
    var cubit = context.read<ImagePickerCubit>();

    // FilePickerResult? result = await FilePicker.platform.pickFiles();

    // if(result != null) {
    // _storedImage = File(result.files.single.path ?? "");
    ImagePicker imagePicker = ImagePicker();

    XFile? pickedFile = await imagePicker
        .pickImage(source: ImageSource.gallery)
        .whenComplete(() {
      // setState(() {});
    });

    print("pickedFile path : ${pickedFile?.path}");

    _storedImage = pickedFile;
    // print(
    //     "image size in widget: ${fileSizeCheckInMB(_storedImage.readAsBytesSync().lengthInBytes)} MB");
    _storedImage = await fileCompressor(_storedImage);
    // print(
    //     "image size after Compressed: ${fileSizeCheckInMB(_storedImage.readAsBytesSync().lengthInBytes)} MB");

    cubit.updateState(storedImage: _storedImage);

    widget.functionCallbackSetImageFilePath?.call(0, _storedImage);

    // print("_storedImage path : ${_storedImage.path}");
    FocusScope.of(context).unfocus();

    // print("issuerImage from detail page path : ${widget.issuerImage?.path}");
    // } else {
    //   // User canceled the picker
    // }
  }

  Future _showDialogPickImageFromGalleryOrCamera(
      BuildContext context, ImagePickerCubitState state) async {
    return myConfirmDialog(context,
        basicContentString: "Choose Report Image",
        positiveButton: () async {
          await _pickFile(context, state);
        },
        positiveButtonText: "From Gallery",
        negativeButton: () async {
          await _takePicture(context, state);
        },
        negativeButtonText: "Pick From Camera");
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ImagePickerCubit();
      },
      child: Builder(builder: (builderContext) {
        var cubitInst = builderContext.read<ImagePickerCubit>();

        var cubitState = builderContext.watch<ImagePickerCubit>().state;

        if (!cubitState.isInitialized) {
          cubitInst.initLocalImagePickerState(
            // storedImage: storedImage,
            isEnabled: widget.isEnabled,
            imageURL: widget.imageURL,
            title: widget.title,
            localImageURL: widget.localImageURL,
          );
        }
        return InkWell(
          onTap: cubitState.isEnabled
              ? () {
                  _showDialogPickImageFromGalleryOrCamera(
                      builderContext, cubitState);

                  // _pickFile();
                }
              : null,
          child: (cubitState.imageURL == null)
              ? cubitState.storedImage == null
                  ? widget.defaultImagePlaceholder ??
                      const _DefaultIconPlaceholder()
                  : Image.file(File(cubitState.storedImage?.path ?? ""),
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                      // setState(() {
                      cubitState.imageURL = null;
                      // });
                      return widget.defaultImagePlaceholder ??
                          const _DefaultIconPlaceholder();
                    })
              : (cubitState.localImageURL != cubitState.imageURL &&
                      cubitState.localImageURL != null &&
                      cubitState.storedImage != null)
                  ? Image.file(File(cubitState.storedImage?.path ?? ""),
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                      // setState(() {
                      cubitState.imageURL = null;
                      // });
                      return widget.defaultImagePlaceholder ??
                          const _DefaultIconPlaceholder();
                    })
                  : Image.network(
                      cubitState.imageURL!,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        // setState(() {
                        cubitState.imageURL = null;
                        // });
                        return widget.defaultImagePlaceholder ??
                            const _DefaultIconPlaceholder();
                      },
                    ),
        );
      }),
    );
  }
}

class _DefaultIconPlaceholder extends StatelessWidget {
  const _DefaultIconPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.image,
      size: widthScreen(context) * 0.4,
      color: Color(primaryColor),
    );
  }
}
