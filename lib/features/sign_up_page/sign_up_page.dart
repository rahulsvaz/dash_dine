import 'package:dash_dine/features/sign_up_page/widgets/sign_up_image.dart';
import 'package:dash_dine/features/widgets/login_sign_up_button.dart';
import 'package:dash_dine/features/widgets/login_text_field.dart';
import 'package:dash_dine/features/widgets/text_button.dart';
import 'package:dash_dine/helper/palette.dart';
import 'package:dash_dine/helper/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final validator = Validator();
    final emailController = TextEditingController();
    final nameController = TextEditingController();
    final mobileNumberController = TextEditingController();
    final passWordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    // final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.start,
        reverse: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            SignUpImage(width: width),
            SizedBox(height: height * 0.05),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                'Create Account !',
                style: GoogleFonts.aboreto(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Palette.deepOrange),
              ),
            ),
            SizedBox(height: height * 0.03),
            LoginTextForm(
              controller: nameController,
              obscure: false,
              hint: 'Name',
              preFixIcon: Icons.person,
              validator: validator.nameValidator,
            ),
            SizedBox(height: height * 0.03),
            LoginTextForm(
              controller: mobileNumberController,
              obscure: false,
              hint: 'Mobile Number',
              preFixIcon: Icons.phone,
              validator: validator.phoneValidator,
            ),
            SizedBox(height: height * 0.03),
            LoginTextForm(
              controller: emailController,
              obscure: false,
              hint: 'Email',
              preFixIcon: Icons.email,
              validator: validator.emailValidator,
            ),
            SizedBox(height: height * 0.03),
            LoginTextForm(
              controller: passWordController,
              surFixIcon: Icons.remove_red_eye,
              obscure: true,
              hint: 'Password',
              preFixIcon: Icons.password,
              validator: validator.passwordValidator,
            ),
            SizedBox(height: height * 0.03),
            LoginButton(
              callback: () {},
              label: "Login",
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have An Account! Back To"),
                TextButtonLogin(
                    callback: () {
                      Navigator.pop(context);
                    },
                    text: "Login"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
