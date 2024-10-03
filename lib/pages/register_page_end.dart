import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/button.dart';
import 'package:learning_app_projekt_uebung/components/loading_bar.dart';
import 'package:learning_app_projekt_uebung/components/user.dart';

class RegisterPageEnd extends StatelessWidget {
  const RegisterPageEnd({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text(
                  "Fortschrittsbalken",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const LoadingBar(
                widthBoxOne: 370,
                widthBoxTwo: 0,
              ),
              const SizedBox(
                height: 48,
              ),
              const Image(image: AssetImage("assets/images/test_newnew.png")),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              const Text(
                "Herzlich Willkommen,",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage("assets/images/crown_st.png"),
                ),
              ),
              Text(
                (user.name),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
              const Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 64, left: 24, right: 24),
                child: MyNewButton(
                    newText: "Zur Homepage",
                    nextSite: () => Navigator.pushNamed(context, "/homepage"),
                    icon: null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
