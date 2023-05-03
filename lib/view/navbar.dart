import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Jonathan"),
            accountEmail: Text("s322220020@student.ubm.ac.id"),
            currentAccountPicture: CircleAvatar(),
            decoration: BoxDecoration(
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
          ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Profile",
                style:
                    TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.account_balance_sharp),
              title: Text(
                "Account change",
                style:
                    TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.password),
              title: Text(
                "Reset Password",
                style:
                    TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Share this app",
                style:
                    TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                "Sign Out",
                style:
                    TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
