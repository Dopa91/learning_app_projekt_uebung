import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/first_calendar.dart';
import 'package:learning_app_projekt_uebung/components/user.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/test_2.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.face_sharp, size: 96),
                  Spacer(),
                  CircleAvatar(
                    radius: 96,
                    backgroundImage: AssetImage("assets/images/niceOMG.gif"),
                  ),
                ],
              ),
            ),
            const Text(
              "Willkommen,",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              user.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: FirstCalendar(),
            ),
          ],
        ),
      ),
    );
  }
}
