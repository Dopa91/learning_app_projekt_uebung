import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/pages/first_calendar.dart';
import 'package:learning_app_projekt_uebung/pages/homepage_screen.dart';
import 'package:learning_app_projekt_uebung/pages/settings_screen.dart';
import 'package:learning_app_projekt_uebung/pages/user.dart';
import 'package:learning_app_projekt_uebung/pages/user_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> widgets = [
    HomepageScreen(
      user: userList[2],
    ),
    const DiaryScreen(),
    const SettingsScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          currentIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Homepage"),
          NavigationDestination(icon: Icon(Icons.book), label: "Diary"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: widgets[currentIndex],
    );
  }
}

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Diary"),
          ],
        ),
      ),
    );
  }
}
