import 'package:flutter/material.dart';
import 'package:learning_app_projekt_uebung/components/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      backgroundColor: const Color.fromARGB(255, 217, 192, 242),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/test_newnew.png"),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 16, 97, 219)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Melde dich jetzt an",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 16, 97, 219),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, left: 24, right: 24),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, left: 24, right: 24),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64, right: 24, left: 24),
            child: MyNewButton(
              newText: "Login",
              nextSite: () => Navigator.pushNamed(context, "/homepage"),
              icon: Icons.arrow_forward,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 24, left: 24),
            child: MyNewButton(
              newText: "Registrieren",
              nextSite: () => Navigator.pushNamed(context, "/registerpage"),
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}
