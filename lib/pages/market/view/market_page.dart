import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

import '../../../utils/search_bar.dart';
import '../../search_page/view/search_page.dart';
import '../widgets/advert_card.dart';
import '../widgets/market_tab.dart';
import '../widgets/promoted_items.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int? index;
  final pageController = PageController();
  final pageControllerP = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _currentPageNotifierP = ValueNotifier<int>(0);
  final List<String> carouselImages = [
    "assets/advert.png",
    "assets/1.png",
    "assets/3.png"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: SearchBar(
                  labelText: "Search for Your Favorites",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                            Get.to(() => const SearchPage());
                          },
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(8)),
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
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFCAC6C6),
              ),
              SizedBox(
                height: 10,
              ),
              AdvertCard(
                  pageController: pageController,
                  carouselImages: carouselImages,
                  currentPageNotifier: _currentPageNotifier),
              SizedBox(
                height: 10,
              ),
              Center(
                child: _buildCircleIndicator1(),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFCAC6C6),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Baking Items",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 23.5, color: Theme.of(context).primaryColor),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFCAC6C6),
              ),
              SizedBox(
                height: 5,
              ),
              MarketTab(),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFCAC6C6),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: PromotedItemCard(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildCircleIndicator1() {
    return CirclePageIndicator(
      size: 10.0,
      selectedSize: 14.0,
      itemCount: carouselImages.length,
      currentPageNotifier: _currentPageNotifier,
      dotColor: Color(0xFFD9D9D9),
      selectedDotColor: Color(0xFFA41210),
    );
  }
}
