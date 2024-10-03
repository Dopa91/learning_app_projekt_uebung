import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/button.dart';
import 'package:learning_app_projekt_uebung/components/loading_bar.dart';
import 'package:learning_app_projekt_uebung/components/text_field_box.dart';

class RegisterPageThree extends StatelessWidget {
  const RegisterPageThree({super.key});

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
                widthBoxOne: 260,
                widthBoxTwo: 110,
              ),
              const SizedBox(
                height: 48,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: Text(
                  "Was ist deine Diagnose",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const TextFieldBox(text: "Morbus Crohn"),
              const TextFieldBox(text: "Colitis Ulcerosa"),
              const TextFieldBox(text: "Andere"),
              const TextFieldBox(text: "Möchte ich nicht mitteilen"),
              const Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 64, left: 24, right: 24),
                child: MyNewButton(
                    newText: "Weiter",
                    nextSite: () =>
                        Navigator.pushNamed(context, "/registerpageend"),
                    icon: null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
