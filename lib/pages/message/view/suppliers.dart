import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/suppliers.dart';
import 'buyers.dart';

class Suppliers extends StatefulWidget {
  const Suppliers({super.key});

  @override
  State<Suppliers> createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  final ctrl = Get.put(SuppliersController());
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SuppliersController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                                        color: selected == 0
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
                                        color: selected == 1
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
                      SizedBox(
                        height: 1.h,
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
