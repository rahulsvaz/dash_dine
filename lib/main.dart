import 'package:dash_dine/features/login_page/bloc/login_page_bloc.dart';
import 'package:dash_dine/features/login_page/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

          
          create: (_) => LoginPageBloc(),
        ),
      ],
      child: const MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
