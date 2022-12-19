import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'config/theme_data.dart';
import 'pages/landingPage/view/landing_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ALIBABA CLONE APP',
          theme: AppThemes.appThemeData,
          home: const Landing_Page(),
          builder: (_, child) => _Unfocus(child: child!));
    });
  }
}

//To enable removal of keyboard key from any area of the screen
class _Unfocus extends StatelessWidget {
  const _Unfocus({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
