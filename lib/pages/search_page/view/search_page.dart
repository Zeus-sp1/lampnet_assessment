import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/search_bar.dart';
import '../widgets/search_page_body.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                SvgPicture.asset("assets/location.svg"),
                const SizedBox(
                  height: 15,
                ),
                SearchBar(
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
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Icon(
                              Icons.search_sharp,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SearchTab(),
              ],
            )));
  }
}
