import 'package:flutter/material.dart';

class TextButtonLogin extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  const TextButtonLogin(
      {super.key, required this.callback, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(text,style: TextStyle(
        color: Colors.grey,fontSize: 15
      ),),
    );
  }
}
