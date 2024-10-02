import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/pages/homepage.dart';
import 'package:learning_app_projekt_uebung/pages/login_page.dart';
import 'package:learning_app_projekt_uebung/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
      routes: {
        '/loginpage': (context) => const LoginPage(),
        //'/registerpage': (context) => RegisterPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
