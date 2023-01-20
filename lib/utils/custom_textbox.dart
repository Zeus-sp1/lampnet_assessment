import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    super.key,
    this.controller,
    this.keyboard,
    this.labelText,
    this.obstsructText = false,
    this.icon,
    this.validator,
    this.inputFormatters,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final String? labelText;
  final TextInputType? keyboard;
  final IconData? icon;
  final FormFieldValidator? validator;
  final bool obstsructText;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      controller: controller,
      validator: validator,
      obscureText: obstsructText,
      inputFormatters: inputFormatters,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(20, 25, 25, 0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Colors.orange,
          ),
        ),
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: Colors.grey),
        prefixIcon: icon != null
            ? Icon(
                icon,
                color: Colors.grey,
              )
            : null,
      ),
    );
  }
}
