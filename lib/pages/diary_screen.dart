import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/info_snack_bar.dart';

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
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/test_2.png"))),
        child: Column(
          children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    "Your Diary",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
                  ),
                ],
              ),
            ),
            InfoSnackBar(image: Image.asset("assets/images/nice.gif")),
          ],
        ),
      ),
    );
  }
}
