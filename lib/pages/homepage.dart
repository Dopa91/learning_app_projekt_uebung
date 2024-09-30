import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 192, 242),
      body: SafeArea(
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

class FirstCalendar extends StatelessWidget {
  const FirstCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Dein Persönlicher Terminmanager",
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(24)),
            child: TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2023, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
            ),
          ),
        ),
      ],
    );
  }
}
