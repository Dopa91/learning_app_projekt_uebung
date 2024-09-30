import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

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
