import 'dart:io';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

class BuyersController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;
  final cloudinary = CloudinaryPublic('do3waasgr', 'crq4is1h', cache: false);

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      try {
        CloudinaryResponse response = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(selectedImagePath.value,
              resourceType: CloudinaryResourceType.Image),
        );

        print(response.secureUrl);
      } on CloudinaryException catch (e) {
        print(e.message);
        print(e.request);
      }
      // selectedImageSize.value =
      //     ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
      //             .toStringAsFixed(2) +
      //         'Mb';
    } else {
      Get.snackbar('Error', 'No Image Selected',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
