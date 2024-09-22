import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Kroenchen App",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                Image.asset("lib/images/crown.png", height: 64),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: Image.asset(
                "lib/images/kroenchen_new.png",
                height: 420,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Herzliche Willkommen",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 36),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: MyNewButton(
                newText: 'Reise Starten',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
