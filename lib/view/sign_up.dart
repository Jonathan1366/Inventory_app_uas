import 'package:flutter/material.dart';
import 'package:inventory_app/view/homepage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 205, 209, 255),
            Color.fromARGB(255, 102, 92, 238),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Image.asset(
                "assets/enrollment.png",
                width: 100,
                height: 100,
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text("Let's Get Started !",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          const Text(
            "Create a new account",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
              color: Color.fromARGB(255, 65, 65, 65),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  "username",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 85, 85, 85),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Your name",
                    hintStyle: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(255, 134, 134, 134)),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 85, 85, 85),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(255, 134, 134, 134)),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 85, 85, 85),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    hintStyle: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color.fromARGB(255, 134, 134, 134)),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock_person_rounded,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // BUTTON SIGN UP
        ],
      ),
    ));
  }
}
