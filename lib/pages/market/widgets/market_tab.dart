import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../acessories/view/acessories_page.dart';
import '../../aso_ebi/view/aso_ebi_page.dart';
import '../../bakingItems/view/baking_items_page.dart';

class MarketTab extends StatelessWidget {
  String market_name = "Shoe";
  MarketTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: DefaultTabController(
        length: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
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
                    text: "Shoe",
                  ),
                  Tab(
                    text: "Bags",
                  ),
                  Tab(text: "Television"),
                  Tab(text: "assessories"),
                  Tab(text: "Wrist-Watch"),
                  Tab(text: "Cloth"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    AsoEbiPage(),
                    BakingItems(),
                    AccessoriesPage(),
                    Center(
                      child: Text(
                        "Food Ingredients",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Music Policy",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 18,
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
