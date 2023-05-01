import 'dart:async';
import 'package:flutter/material.dart';
import 'package:inventory_app/view/loginpage.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  static const String route = "/";
  // dibuat inisial agar rutenya tidak typo

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushNamed(LoginPage.route);
        // diganti dengan nama alias setelah di buat rutenya di main.dart
        // .push(MaterialPageRoute(builder: (context) => const LoginPage()));
      },
    );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(196, 59, 89, 241),
              Color.fromARGB(225, 66, 5, 198),
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/inventory (1).png",
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
