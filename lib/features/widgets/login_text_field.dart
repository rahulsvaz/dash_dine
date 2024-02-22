import 'package:dash_dine/helper/palette.dart';
import 'package:flutter/material.dart';

class LoginTextForm extends StatelessWidget {
  final IconData preFixIcon;
  final bool obscure;
  final String hint;
  const LoginTextForm(
      {super.key, required this.preFixIcon, required this.hint, required this.obscure});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: height * 0.06, maxWidth: width * 0.8),
      child: Container(
        decoration: BoxDecoration(
          color: Palette.textFieldColor,
          borderRadius: BorderRadius.circular(width * 0.033),
        ),
        child: TextFormField(
          obscureText: obscure,
          style:const  TextStyle(color: Colors.grey),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:const  TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              preFixIcon,
              color: Palette.deepOrange,
            ),
            errorBorder: borderDecoration(width),
            enabledBorder: borderDecoration(width),
            focusedBorder: borderDecoration(width),
            contentPadding:const  EdgeInsets.all(10)
          ),
        ),
      ),
    );
  }

  OutlineInputBorder borderDecoration(double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(width * 0.033),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
