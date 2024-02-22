import 'package:dash_dine/features/widgets/login_signup_button.dart';
import 'package:dash_dine/features/widgets/login_text_field.dart';
import 'package:dash_dine/features/widgets/text_button.dart';
import 'package:dash_dine/helper/palette.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(height * 0.3),
            ),
            child: Image.asset('assets/images/indian-food.jpeg'),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: width * 0.05,
                  top: height * 0.02,
                  child: Text(
                    'Welcome !',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Palette.deepOrange),
                  ),
                ),
                Positioned(
                  top: height * 0.08,
                  left: width * 0.02,
                  child: const LoginTextForm(
                    hint: 'Email',
                    preFixIcon: Icons.email,
                  ),
                ),
                Positioned(
                  top: height * 0.16,
                  left: width * 0.12,
                  child: const LoginTextForm(
                    hint: 'Password',
                    preFixIcon: Icons.password,
                  ),
                ),
                Positioned(
                  top: height * 0.24,
                  left: width * 0.28,
                  child: const LoginButton(
                    label: "Login",
                  ),
                ),
                Positioned(
                   top: height * 0.31,
                  left: width * 0.28,
                  child: Text('Forgot Password'),),
                Positioned(
                    top: height * 0.32,
                  left: width * 0.18,
                  child: Row(
                    children: [
                      const  Text( "Don't Have An Account!"),
                      TextButtonLogin(
                          callback: () {}, text:"Sign Up"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
