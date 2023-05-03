import 'package:flutter/material.dart';
import 'package:inventory_app/view/homepage.dart';
import 'package:inventory_app/view/loginpage.dart';
import 'package:inventory_app/view/sign_up.dart';
import 'package:inventory_app/view/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Inventory());
}

class Inventory extends StatelessWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: "/",
      routes: {
        "/": (context) => const Splash(),
        LoginPage.route: (context) => const LoginPage(),
        Signup.route: (context) => const Signup(),
        HomePage.route: (contex) => const HomePage(),
      },
      // home: Splash(),
      //mengindikasikan home page nya adalah splash screen,,
      // home: Splash()
    );
  }
}
