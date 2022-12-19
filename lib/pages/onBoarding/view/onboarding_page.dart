import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../login/view/login_page.dart';
import '../../register/view/registration_page.dart';

class OnBoarding_Page extends StatefulWidget {
  const OnBoarding_Page({Key? key}) : super(key: key);

  @override
  State<OnBoarding_Page> createState() => _OnBoarding_PageState();
}

class _OnBoarding_PageState extends State<OnBoarding_Page> {
  String? title = '';
  int? index;
  String? quote = '';
  String? quote2 = '';
  String? note = "";
  String? loginNote = "";
  final pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  int activeIndex = 0;

  final List<String> carouselImages = [
    "assets/alibaba3.jpeg",
    "assets/alibaba1.jpeg",
    "assets/alibaba1.jpeg",
    "assets/alibaba3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/alibaba3.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: pageController,
                      itemCount: carouselImages.length,
                      itemBuilder: (
                        _,
                        activeIndex,
                      ) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage(
                                carouselImages[activeIndex],
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    quote.toString(),
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                    ),
                                  ),
                                  Text(
                                    quote2.toString(),
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              _buildCircleIndicator1(),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  _nextButton(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => LoginPage(),
                                      //   ),

                                      // );
                                      Get.to(() => const LoginPage());
                                    },
                                    child: Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 1),
                                      ),
                                      child: Center(
                                        child: Text('Skip',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: .5,
                                                )),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        note.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                              fontSize: 1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             ResgistrationPage()));
                                          Get.to(
                                              () => const ResgistrationPage());
                                        },
                                        child: Text(loginNote.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      onPageChanged: (index) {
                        // print(index);
                        _currentPageNotifier.value = index;
                        if (index == (carouselImages.length - 1)) {
                          setState(() {
                            title = '';
                            quote = '';
                            quote2 = "";
                            note = "";
                            loginNote = "Sign Up";
                          });
                        } else if (index == (carouselImages.length - 2)) {
                          setState(() {
                            quote = '';
                            quote2 = " ";
                            title = '';
                            loginNote = "";
                            note = "";
                          });
                        } else if (index == (carouselImages.length - 3)) {
                          setState(() {
                            quote = "";
                            quote2 = "";
                            title = '';
                            loginNote = "";
                            note = "";
                          });
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildCircleIndicator1() {
    return SmoothPageIndicator(
      controller: pageController,
      count: carouselImages.length,
      effect: ExpandingDotsEffect(
        dotHeight: 8,
        dotColor: Color.fromARGB(255, 210, 202, 202),
        activeDotColor: Theme.of(context).primaryColor,
      ),
    );
  }

  _nextButton() {
    return InkWell(
      onTap: () {
        if (_currentPageNotifier.value == (carouselImages.length - 1)) {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const LoginPage(),
          //   ),
          // );
          Get.to(() => const LoginPage());
        } else {
          next();
        }
      },
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title.toString(),
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ),
    );
  }

  void previous() => pageController.previousPage(
      duration: Duration(milliseconds: 1000), curve: Curves.decelerate);

  void next() => pageController.nextPage(
      duration: Duration(milliseconds: 800), curve: Curves.easeInQuad);
}
