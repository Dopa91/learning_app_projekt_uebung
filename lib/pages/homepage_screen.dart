import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 72,
                    backgroundImage: AssetImage("assets/images/bober.jpg"),
                  ),
                  const Spacer(),
                  ImageSlideshow(
                    indicatorRadius: 0,
                    autoPlayInterval: 4200,
                    indicatorColor: Colors.purple,
                    onPageChanged: (value) {
                      debugPrint("Next Page: $value");
                    },
                    isLoop: true,
                    width: 180,
                    children: [
                      Image.asset(
                        "assets/images/bluesky.jpg",
                        fit: BoxFit.fitWidth,
                      ),
                      Image.asset(
                        "assets/images/sunnyplace.jpg",
                        fit: BoxFit.fitWidth,
                      ),
                      Image.asset(
                        "assets/images/flowerbird.jpg",
                        fit: BoxFit.fitWidth,
                      ),
                      Image.asset(
                        "assets/images/snowplace.jpg",
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
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
