import 'package:flutter/material.dart';

class SignUpImage extends StatelessWidget {
  const SignUpImage({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(width*0.5)),
      child: Image.asset('assets/images/indin_food2.jpeg',));
  }
}