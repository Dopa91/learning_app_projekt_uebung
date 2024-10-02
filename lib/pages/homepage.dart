import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/pages/first_calendar.dart';
import 'package:learning_app_projekt_uebung/pages/homepage_screen.dart';
import 'package:learning_app_projekt_uebung/pages/user.dart';
import 'package:learning_app_projekt_uebung/pages/user_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {});
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Homepage"),
          NavigationDestination(icon: Icon(Icons.book), label: "Diary"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: HomepageScreen(
        user: userList[currentIndex],
      ),
    );
  }
}
