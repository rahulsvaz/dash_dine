import 'package:dash_dine/helper/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final String label;

  const LoginButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.06,
      width: width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Palette.deepOrange),
      child:  Center(
        child: Text(
          label,
          style: GoogleFonts.aboreto(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
