import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileVendorReview extends StatelessWidget {
  const ProfileVendorReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: EdgeInsets.only(top: 14),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 32,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/sunday1.jpg'),
                      radius: 30,
                      //Text
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MR Tunde',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    Container(
                      height: 100,
                      width: 210,
                      child: Column(
                        children: [
                          Text(
                            'Mr Zeus is excellent and very time conscious, he is your number one fast plug',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.grey, fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/customstar1.png',
            height: 18.sp,
            width: 50.sp,
          ),
        ]),
      ),
    );
  }
}
