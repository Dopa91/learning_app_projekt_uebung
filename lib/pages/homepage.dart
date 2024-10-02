import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/pages/first_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Homepage"),
        NavigationDestination(icon: Icon(Icons.book), label: "Diary"),
        NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
      ]),
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: const SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.face_sharp,
                          size: 96,
                        ),
                        Text(
                          "Willkommen,",
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          "Mina",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: FirstCalendar(),
            ),
          ],
        ),
      ),
    );
  }
}
