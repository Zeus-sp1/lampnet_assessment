// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:lampnet/pages/message/view/buyers.dart';
// import 'package:sizer/sizer.dart';

// import 'suppliers.dart';

// class MessagePage extends StatefulWidget {
//   const MessagePage({Key? key}) : super(key: key);

//   @override
//   State<MessagePage> createState() => _MessagePageState();
// }

// class _MessagePageState extends State<MessagePage> {
//   int selected = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                           height: 30.sp,
//                           width: 120.sp,
//                           child: Row(
//                             children: [
//                               InkWell(
//                                 onTap: () {
//                                   if (selected == 0) {
//                                     setState(() {
//                                       Get.to(() => Suppliers());
//                                     });
//                                   }
//                                 },
//                                 child: Container(
//                                   height: 30.sp,
//                                   width: 60.sp,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(12),
//                                       color: selected == 0
//                                           ? Colors.orangeAccent
//                                           : Colors.grey[50]),
//                                   child: Center(
//                                     child: Text(
//                                       'Suppliers ',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .bodyText1!
//                                           .copyWith(
//                                               color: Colors.black,
//                                               fontSize: 12.sp),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   if (selected == 0) {
//                                     setState(() {
//                                       Get.to(() => Buyers());
//                                     });
//                                   }
//                                 },
//                                 child: Container(
//                                   height: 30.sp,
//                                   width: 60.sp,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(12),
//                                       color: selected == 1
//                                           ? Colors.orangeAccent
//                                           : Colors.grey[50]),
//                                   child: Center(
//                                     child: Text(
//                                       'Buyers',
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .bodyText1!
//                                           .copyWith(
//                                               color: Colors.black,
//                                               fontSize: 12.sp),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
