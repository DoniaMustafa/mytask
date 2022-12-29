import 'package:flutter/material.dart';
import 'package:mytask/presentation/pages/login/login_page.dart';
import 'package:mytask/presentation/pages/setting/setting_page.dart';
import 'package:mytask/presentation/pages/splash_screen/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(

        // scaffoldBackgroundColor: Color(0xFFECECEC)
      ) ,

     debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

