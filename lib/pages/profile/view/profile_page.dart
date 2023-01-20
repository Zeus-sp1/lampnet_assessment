import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lampnet/pages/profile/view/profile_vendor_review.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/profile_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ctrl = Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilePageController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 140.sp,
                width: 350.sp,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        // width: 360.sp,
                        height: 110.sp,
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Icon(
                                    Icons.chevron_left,
                                    size: 30.0.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Image.asset(
                                  'assets/suit.png',
                                  height: 50.sp,
                                  width: 50.sp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70.sp,
                      left: 30.sp,
                      width: 90.sp,
                      height: 70.sp,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 52,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/sunday1.jpg'),
                              radius: 50,
                              //Text
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 103.sp,
                        left: 190.sp,
                        width: 58.sp,
                        height: 14.8.sp,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0),
                                    side: BorderSide(color: Colors.red)),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                Colors.red,
                              )),
                          child: Text('Chat',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                  )),
                        )),
                    Positioned(
                      top: 112.sp,
                      left: 80.sp,
                      width: 45.sp,
                      height: 14.8.sp,
                      child: Image.asset('assets/awardmain.png',
                          height: 60.sp,
                          width: 60.sp,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                height: 125.sp,
                margin: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sunday Peter',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 12.sp,
                                  color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.navigation_rounded),
                        Text(
                          'Lagos, Nigeria',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Join us to be part of Plan and Party to enjoy exclusive deals',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 12.sp,
                          color: Theme.of(context).primaryColor),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/customstar1.png',
                          height: 15.sp,
                          width: 40.sp,
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor)),
                        child: Text('Follow',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                    ))),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/awardmain.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 1.h),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vendor Level',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.grey, fontSize: 10.sp),
                            ),
                            Text(
                              'Level 1 Vendor',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 11.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              height: 0.1.h,
                              width: 80.w,
                              color: Color(0xFFEEE9E9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/languagemain.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 1.h),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Languages',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.grey, fontSize: 10.sp),
                            ),
                            Text(
                              'English',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 11.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              height: 0.15.h,
                              width: 80.w,
                              color: Color(0xFFEEE9E9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/response.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 1.h),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Avg., Response/Delivery time',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontStyle: FontStyle.italic,
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 11.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              'Rating here',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 11.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Container(
                              height: 0.15.h,
                              width: 80.w,
                              color: Color(0xFFEEE9E9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Veb Rating',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 12.sp),
                    ),
                    // Container(child: RatingStarBar(context)),
                    Image.asset(
                      'assets/customstar1.png',
                      height: 18.sp,
                      width: 50.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 0.1.h,
                color: Color(0xFFEEE9E9),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'User Reviews',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 13.sp),
                        ),
                        Text(
                          '(150)',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ProfileVendorReview(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
