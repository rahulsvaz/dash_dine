
import 'package:dash_dine/features/login_page/login_page.dart';
import 'package:flutter/material.dart';
void main()async{
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: LoginPage(
        
      ),
    );
  }
}