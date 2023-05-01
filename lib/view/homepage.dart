import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 226, 215, 246),
              Color.fromARGB(255, 117, 132, 216)
            ],
          ),
        ),
        child: Column(
          children: const <Widget>[
            Align(alignment: Alignment.topLeft),
            Text(
              "Phone Stock Inventory Management",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
