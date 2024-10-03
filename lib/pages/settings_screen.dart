import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.settings,
            size: 256,
          ),
          SizedBox(
            height: 128,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 72, right: 72),
                child: MyNewButton(
                  newText: "Logout",
                  nextSite: null,
                  icon: Icons.logout,
                ),
              ),
              Padding(
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
