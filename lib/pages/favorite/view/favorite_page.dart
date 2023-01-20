import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/favoritepage.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});

  final ctrl = Get.put(FavoritePageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoritePageController>(builder: (controller) {
      return Column(
        children: [
          Row(
            children: [
              Container(
                height: 260.sp,
                width: 130.sp,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    Container(
                      height: 130.sp,
                      width: 120.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/suit.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(height: 1.h),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Description of product is to be inserted here and should not be',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.black, fontSize: 13.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.green, fontSize: 13.sp),
                          ),
                          Text(
                            '50',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black, fontSize: 13.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120.sp,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '₦',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Colors.red, fontSize: 13.sp),
                                  ),
                                  Text(
                                    '15,000',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Colors.red, fontSize: 13.sp),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                height: 20.sp,
                                width: 50.sp,
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Add',
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black,
                                            onPrimary: Color(0xFF92F323))),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 1.h,
              ),
              Container(
                height: 260.sp,
                width: 130.sp,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    Container(
                      height: 130.sp,
                      width: 120.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage("assets/suit.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(height: 1.h),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Description of product is to be inserted here and should not be',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: Colors.black, fontSize: 13.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.green, fontSize: 13.sp),
                          ),
                          Text(
                            '50',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.black, fontSize: 13.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120.sp,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '₦',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Colors.red, fontSize: 13.sp),
                                  ),
                                  Text(
                                    '15,000',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Colors.red, fontSize: 13.sp),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                height: 20.sp,
                                width: 50.sp,
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Add',
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black,
                                            onPrimary: Color(0xFF92F323))),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
