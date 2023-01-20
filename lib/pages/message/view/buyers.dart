import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/buyers.dart';
import 'suppliers.dart';

class Buyers extends StatefulWidget {
  const Buyers({super.key});

  @override
  State<Buyers> createState() => _BuyersState();
}

class _BuyersState extends State<Buyers> {
  final ctrl = Get.put(BuyersController());
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuyersController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 30.sp,
                            width: 140.sp,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (selected == 0) {
                                      setState(() {
                                        Get.to(() => Suppliers());
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 30.sp,
                                    width: 70.sp,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: selected == 1
                                            ? Colors.orangeAccent
                                            : Colors.grey[50]),
                                    child: Center(
                                      child: Text(
                                        'Suppliers ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (selected == 0) {
                                      setState(() {
                                        Get.to(() => Buyers());
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 30.sp,
                                    width: 70.sp,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: selected == 0
                                            ? Colors.orangeAccent
                                            : Colors.grey[50]),
                                    child: Center(
                                      child: Text(
                                        'Buyers',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 14.sp),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Obx(() => controller.selectedImagePath.value == ''
                          ? Text('Select image from Camera/Galley',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    color: Colors.red,
                                    fontSize: 12.sp,
                                  ))
                          : Image.file(
                              File(controller.selectedImagePath.value))),
                      SizedBox(
                        height: 1.h,
                      ),
                      Obx(() => Text(
                          controller.selectedImageSize.value == ''
                              ? ''
                              : controller.selectedImageSize.value,
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.red,
                                    fontSize: 12.sp,
                                  ))),
                      Container(
                        color: Colors.red,
                        child: TextButton(
                          onPressed: () {
                            controller.getImage(ImageSource.camera);
                          },
                          child: Text('Camera',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.white, fontSize: 12.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        color: Colors.red,
                        child: TextButton(
                          onPressed: () {
                            controller.getImage(ImageSource.gallery);
                          },
                          child: Text('Gallery',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.white, fontSize: 12.sp)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
