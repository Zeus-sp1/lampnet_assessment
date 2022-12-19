import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    this.controller,
    this.labelText,
    this.obstsructText = false,
    this.icon,
    this.inputFormatters,
    this.suffixIcon,
    this.prefixIcon,
  });

  final TextEditingController? controller;
  final String? labelText;
  final IconData? icon;
  final bool obstsructText;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obstsructText,
      inputFormatters: inputFormatters,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: suffixIcon,
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 25, 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: Color(0xFFC1C1C1)),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
