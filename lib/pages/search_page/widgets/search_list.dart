import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        shrinkWrap: true,
        itemBuilder: (context, builder) {
          return Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffDFDFDF),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 85,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/suit.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atiku Cotton - White, Cream, Sky blue, Deep blue and Grey - 5 Yards",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor),
                        // style: GoogleFonts.poppins(
                        //     color: Constants.kPrimary,
                        //     fontSize: 10,
                        //     fontWeight: FontWeight.w600,
                        //     fontStyle: FontStyle.italic),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Somolu, Lagos.",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 12),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              SvgPicture.asset("assets/time.svg"),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "12 January 2022",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            "N10000",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 12,
                                    color: Theme.of(context).primaryColor),
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text(
                                "Contact vendor",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text(
                                "Buy",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, builder) => const SizedBox(
              height: 10,
            ),
        itemCount: 12);
  }
}
