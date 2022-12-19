import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lampnet/pages/search_page/widgets/search_list.dart';

class SearchTab extends StatelessWidget {
  SearchTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .75,
      width: MediaQuery.of(context).size.width,
      child: DefaultTabController(
        length: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                unselectedBorderColor: Theme.of(context).primaryColor,
                unselectedBackgroundColor: Colors.white,
                borderWidth: 2,
                borderColor: Colors.white,
                decoration: BoxDecoration(
                  color: const Color(0xFFB62123),
                  border: Border.all(color: Colors.white),
                ),
                unselectedLabelStyle: GoogleFonts.poppins(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                labelStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                tabs: const [
                  Tab(
                    text: "Aso-Ebi",
                  ),
                  Tab(text: "Food Ingredients"),
                  Tab(text: "Music Policy"),
                  Tab(text: "Shoes"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    const SearchCard(),
                    Center(
                      child: Text(
                        "Food Ingredients",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Music Policy",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Shoes",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
