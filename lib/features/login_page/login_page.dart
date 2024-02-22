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
        SizedBox(height: height*0.03),
                Text(
                  'Welcome !',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Palette.deepOrange),
                ), SizedBox(height: height*0.03),
                const LoginTextForm(
                  hint: 'Email',
                  preFixIcon: Icons.email,
                ), SizedBox(height: height*0.03),
                const LoginTextForm(
                  hint: 'Password',
                  preFixIcon: Icons.password,
                ), SizedBox(height: height*0.03),
                const LoginButton(
                  label: "Login",
                ), SizedBox(height: height*0.03),
                const Text('Forgot Password'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const  Text( "Don't Have An Account!"),
                    TextButtonLogin(
                        callback: () {}, text:"Sign Up"),
                  ],
                )
           
        ],
      ),
    );
  }
}
