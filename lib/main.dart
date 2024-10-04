import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/user_list.dart';
import 'package:learning_app_projekt_uebung/pages/homepage_bottomNavBar.dart';
import 'package:learning_app_projekt_uebung/pages/login_page.dart';
import 'package:learning_app_projekt_uebung/pages/register_page_end.dart';
import 'package:learning_app_projekt_uebung/pages/register_page_three.dart';
import 'package:learning_app_projekt_uebung/pages/register_page_two.dart';
import 'package:learning_app_projekt_uebung/pages/start_page.dart';
import 'package:learning_app_projekt_uebung/pages/register_page.dart';

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
        '/registerpage': (context) => const RegisterPageOne(),
        '/registerpagetwo': (context) => const RegisterPageTwo(),
        '/registerpagethree': (context) => const RegisterPageThree(),
        '/registerpageend': (context) => RegisterPageEnd(
              user: userList[2],
            ),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
