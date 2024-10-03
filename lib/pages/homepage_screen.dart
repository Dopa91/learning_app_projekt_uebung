import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/pages/first_calendar.dart';
import 'package:learning_app_projekt_uebung/pages/user.dart';
import 'package:learning_app_projekt_uebung/pages/user_list.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.face_sharp,
                          size: 96,
                        ),
                        const Text(
                          "Willkommen,",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          user.name,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24),
            child: FirstCalendar(),
          ),
        ],
      ),
    );
  }
}
