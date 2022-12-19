import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants.dart';
import '../../../utils/search_bar.dart';
import 'widget/event_categories.dart';

class EventPlaceWelcome extends StatefulWidget {
  const EventPlaceWelcome({super.key});

  @override
  State<EventPlaceWelcome> createState() => _EventPlaceWelcomeState();
}

class _EventPlaceWelcomeState extends State<EventPlaceWelcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 10.h,
                        width: 100.w,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          child: SearchBar(
                            labelText: "Search for Your Favorites",
                            suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    "assets/filter.svg",
                                    height: 25,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => const SearchPage()));
                                    },
                                    child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Constants.kPrimary,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Icon(
                                          Icons.search_sharp,
                                          color: Colors.white,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 10.h,
                        width: 100.w,
                        child: const Text(
                          "Welcome to my Event Place",
                          textAlign: TextAlign.center,
                          textScaleFactor: 2.0,
                          style: TextStyle(
                            color: Constants.kPrimary,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            wordSpacing: 8.0,
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xFFCAC6C6),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 10.h,
                        width: 100.w,
                        child: const Text(
                          "Select your category to get started",
                          textAlign: TextAlign.start,
                          textScaleFactor: 2.0,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 8.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            wordSpacing: 2.0,
                          ),
                        ),
                      ),
                      Container(
                        height: 50.h,
                        width: 100.w,
                        child: SizedBox(
                          child: EventCategoriesItemCard(),
                        ),
                      )
                    ]))));
  }
}
