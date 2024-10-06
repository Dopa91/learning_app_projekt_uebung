import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/first_calendar.dart';
import 'package:learning_app_projekt_uebung/components/my_image_slider.dart';
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
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/bober.jpg"),
                  ),
                  Spacer(),
                  MyImageSlider(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Willkommen,",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                user.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
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
