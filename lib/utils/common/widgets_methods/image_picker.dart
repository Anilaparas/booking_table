import 'dart:io';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerBottomSheet extends StatefulWidget {
  const ImagePickerBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePickerBottomSheet> createState() => _ImagePickerBottomSheetState();
}

class _ImagePickerBottomSheetState extends State<ImagePickerBottomSheet>
    with SingleTickerProviderStateMixin {
  final ImagePicker _picker = ImagePicker();

  XFile? _fileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  if (_fileImage != null) {
                    String imageName =
                        DateTime.now().millisecondsSinceEpoch.toString() +
                            _fileImage!.name.split(".")[1].toString();
                    Navigator.of(context).pop(
                      ImageData(
                        imageName: imageName,
                        fileType: "image/${_fileImage!.name.split(".")[1]}",
                        file: File(_fileImage!.path),
                      ),
                    );
                  } else {
                    Get.back();
                  }
                },
                child: SvgPicture.asset('assets/images/common/ic_close.svg'),
              ),
            ),
          ),
          const Text(
            'Choose option',
            textAlign: TextAlign.center,
            style: TextStyle(color: textGrey868686, fontSize: 18.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          // Image.asset('assets/talent/ic_popup_border.png',
          //     width: MediaQuery.of(context).size.width / 3),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    getFileGallery();
                  },
                  child: Column(
                    children: [
                      // Image.asset(
                      //   ''assets/user_image/ic_gallery.png'',
                      //   width: 50,
                      //   height: 50,
                      // ),

                      SizedBox(
                        width: 50,
                        height: 50,
                        child: SvgPicture.asset(
                            'assets/images/common/ic_gallery.svg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Gallery',
                        style: TextStyle(fontSize: 14, color: textGrey868686),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    getFileCamera();
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: SvgPicture.asset(
                            'assets/images/common/ic_camera.svg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Camera',
                        style: TextStyle(fontSize: 14, color: textGrey868686),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  getFileGallery() async {
    _fileImage = (await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        maxHeight: 1000,
        maxWidth: 1000));

    if (_fileImage != null) {
      returnImage();
    }
  }

  getFileCamera() async {
    // try {
      _fileImage = (await _picker.pickImage(
          source: ImageSource.camera,
          imageQuality: 50,
          maxHeight: 1000,
          maxWidth: 1000));

      if (_fileImage != null) {
        returnImage();
      }
    // }
    // catch (e) {
    //   ShowToast.show(title: e.toString(), message: e.toString());
    // }
  }

  void returnImage() {
    String imageName = DateTime.now().millisecondsSinceEpoch.toString() +
        _fileImage!.name.split(".")[1].toString();
    Navigator.of(context).pop(
      ImageData(
        imageName: imageName,
        fileType: "image/${_fileImage!.name.split(".")[1]}",
        file: File(_fileImage!.path),
      ),
    );
  }
}

class ImageData {
  String? imageName;
  String? fileType;
  File? file;

  ImageData({this.imageName, this.fileType, this.file});
}
