import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lampnet/pages/market/market.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: body()),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        Icon(Icons.qr_code_scanner_outlined),
                      ],
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Icon(Icons.flag),
                        Text('USD',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black)),
                        Icon(Icons.hexagon_outlined),
                      ],
                    )),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Color(0xFFBEBEBD),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets\alibaba1.jpeg'),
                    ),
                  ),
                ),
                SizedBox(width: 2.h),
                Container(
                  child: const Text('Sundya Peter',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Icon(Icons.note_alt_outlined)
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 10.h,
              width: 90.w,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 189, 112),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Buyers Club',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'US 10 Off with a new supplier',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Enter',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Color(0xFFEBEAEA),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(CupertinoIcons.square_favorites_alt,
                    color: Colors.black, size: 35),
                SizedBox(
                  width: 1.w,
                ),
                Row(
                  children: [
                    Text(
                      'Save up tp 1,000 per year',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Color(0xFFEBEAEA),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10.h,
                      width: 80.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Verify company information',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('Enjoy ne business opportunity',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              )),
                          Text('Unlock more Buyer Clubs benefits',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 3.h,
                      width: 16.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 0.3.w,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Verify',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Color(0xFFEBEAEA),
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => ProfilePage()),
              onDoubleTap: () => Get.to(() => ProfilePage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => MarketPage()),
              onDoubleTap: () => Get.to(() => MarketPage()),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            'My orders',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Color(0xFFEBEAEA),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
              child: Column(
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Buyers Club benefits',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 35,
                            ),
                            SizedBox(width: 1.w),
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.chevron_left,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(width: 3.w),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE2DFDF),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '3-days coupons giveaway: up to US 80 off',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image.asset('assets\save2.jpeg')),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.rectangle),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE2DFDF),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '3-days coupons giveaway: up to US 80 off',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      Container(
                                          margin: EdgeInsets.all(5),
                                          child:
                                              Image.asset('assets\save2.jpeg')),
                                    ],
                                  )),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chevron_right,
                                      color: Colors.black,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Color(0xFFEBEAEA),
                ),
              ),
            ),
            Container(
              height: 4.h,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Alibaba.com legal notice',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
