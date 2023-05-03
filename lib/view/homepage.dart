import 'package:flutter/material.dart';
import 'package:inventory_app/view/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String route = "homepage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0.0,
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 226, 215, 246),
              Color.fromARGB(255, 74, 71, 106)
            ],
          ),
        ),
      ),
    );
  }
}
