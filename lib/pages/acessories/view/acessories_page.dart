import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccessoriesPage extends StatelessWidget {
  const AccessoriesPage({Key? key}) : super(key: key);

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
          itemCount: 15,
          itemBuilder: (context, builder) {
            return Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bake.png"), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Measuring cups and spoons",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
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
