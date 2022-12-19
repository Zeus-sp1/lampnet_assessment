import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AsoEbiPage extends StatelessWidget {
  const AsoEbiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            mainAxisExtent: 80,
          ),
          itemCount: 20,
          itemBuilder: (context, builder) {
            return Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/save2.jpeg"),
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "${'40,000'}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
