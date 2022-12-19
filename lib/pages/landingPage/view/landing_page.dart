import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/animation.dart';

import '../../onBoarding/view/onboarding_page.dart';

class Landing_Page extends StatefulWidget {
  const Landing_Page({Key? key}) : super(key: key);

  @override
  State<Landing_Page> createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;
  late Animation<double> heightAnimation;
  double rad = 50;

  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.white, end: Colors.green)
        .animate(CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    ));

    heightAnimation = Tween(begin: 0.0, end: 1100.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    controller.forward();

    controller.addListener(() {
      setState(() {});
    });

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          rad = 0;
        });
      }
    });

    controller.isCompleted;

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(seconds: 4),
        (() {
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) {
          //   return OnBoarding_Page();
          // }));
          Get.to(() => const OnBoarding_Page());
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: heightAnimation.value,
            height: heightAnimation.value,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(rad),
            ),
            child: Center(
              child: Text(
                "Alibaba Clone App",
                style: Theme.of(context).textTheme.bodyText1!,
              ),
            )),
      ),
    );
  }
}
