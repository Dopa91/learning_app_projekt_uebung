import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.settings,
            size: 256,
          ),
          const SizedBox(
            height: 128,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 72, right: 72),
                child: MyNewButton(
                  newText: "Logout",
                  nextSite: () => Navigator.pushNamed(context, "/loginpage"),
                  icon: Icons.logout,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16, left: 72, right: 72),
                child: MyNewButton(
                  newText: "Konto Löschen",
                  nextSite: null,
                  icon: Icons.delete_forever,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
