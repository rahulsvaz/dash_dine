import 'package:dash_dine/helper/palette.dart';
import 'package:flutter/material.dart';

class LoginTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  final IconData preFixIcon;
  final IconData? surFixIcon;
  final VoidCallback? callBackSurFix;
  final bool obscure;
  final String hint;
  const LoginTextForm(
      {super.key,
      required this.controller,
      required this.preFixIcon,
      required this.hint,
      required this.obscure,
      this.surFixIcon,
      this.callBackSurFix,
      required this.validator});
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
          validator: validator,
          obscureText: obscure,
          style: const TextStyle(color: Colors.grey),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: IconButton(
              icon: Icon(
                surFixIcon,
                color: Palette.deepOrange,
              ),
              onPressed: callBackSurFix,
            ),
            prefixIcon: Icon(
              preFixIcon,
              color: Palette.deepOrange,
            ),
            focusedErrorBorder: borderDecoration(width),
            errorBorder: borderDecoration(width),
            enabledBorder: borderDecoration(width),
            focusedBorder: borderDecoration(width),
            contentPadding: const EdgeInsets.all(10),
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
