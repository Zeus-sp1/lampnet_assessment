import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class PromotedItemCard extends StatelessWidget {
  int promotionsCards = 5;
  PromotedItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: promotionsCards,
      itemBuilder: (context, builder) {
        return Container(
          width: 125,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black, width: 1)),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 125,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/suit.png"), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Text(
                    "2 In 1 Men's Suit Coat Pants Uniform Suit",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 10, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff606060),
                      ),
                      Text(
                        "Ikeja Lagos",
                        style: GoogleFonts.poppins(
                            fontSize: 10, color: Color(0xff606060)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: '50,000',
                                style: new TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              new TextSpan(
                                  text: ' 10,000',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Theme.of(context).primaryColor)),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffEB3537),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 20),
    );
  }
}
