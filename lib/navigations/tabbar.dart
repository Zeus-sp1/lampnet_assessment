import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/eventPlace/view/event_place_welcome.dart';
import '../pages/favorite/view/favorite_page.dart';
import '../pages/market/view/market_page.dart';
import '../pages/message/view/message_page.dart';
import '../pages/profile/view/profile_page.dart';
import '../pages/settings/view/settings_page.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xff969696)),
        selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor),
        unselectedItemColor: const Color(0xff969696),
        selectedItemColor: Theme.of(context).primaryColor,
        backgroundColor: const Color(0xffF0F0F0),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            this.selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Store"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Settings"),
        ],
      ),
      body: Stack(
        children: [
          renderView(0, MarketPage()),
          renderView(1, MessagePage()),
          renderView(2, FavoritePage()),
          renderView(3, ProfilePage()),
          renderView(4, SettingsPage()),
          // renderView(4, EventPlaceWelcome()),
        ],
      ),
    );
  }

  IgnorePointer renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: selectedIndex != tabIndex,
      child: Opacity(
        opacity: selectedIndex == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
