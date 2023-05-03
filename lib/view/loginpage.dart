import 'package:flutter/material.dart';
import 'package:inventory_app/view/homepage.dart';
import 'package:inventory_app/view/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String route = "login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool keepMeSignIn = false;
  bool policy = false;
  bool password = false;
  bool forgot = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(199, 40, 86, 213),
              Color.fromARGB(255, 58, 2, 133)
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 150,
              ),
              const Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
              ),
              const Text(
                "Welcome Back !",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lato',
                    fontSize: 20),
              ),

              const SizedBox(
                height: 77,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
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
                        color: Color.fromARGB(255, 50, 50, 50),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  // HINT TEXT INSIDE
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color.fromARGB(255, 110, 110, 110)),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email_rounded,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Lato'),
                    ),
                  )
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
                        color: Color.fromARGB(255, 49, 49, 49),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      obscureText: !password,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        suffixIcon: IconButton(
                          icon: Icon(password
                              // if password maka icon mata bisa visible
                              ? Icons.visibility
                              // else maka icon mata off (not visible)
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              password = !password;
                            });
                          },
                        ),
                        hintStyle: const TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Color.fromARGB(255, 110, 110, 110)),
                        border: InputBorder.none,
                        icon: const Icon(Icons.lock_outline_rounded,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      "forgot password ?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        // fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 231, 11),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: const Color.fromARGB(255, 255, 154, 2),
                  title: const Text(
                    "Keep me sign in",
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Color.fromARGB(248, 255, 255, 255),
                        fontWeight: FontWeight.normal),
                  ),
                  value: keepMeSignIn,
                  onChanged: (bool? newValue) {
                    setState(() {
                      keepMeSignIn = newValue!;
                    });
                  },
                ),
              ),
              // const SizedBox(height: 1),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: const Color.fromARGB(255, 255, 154, 2),
                  title: const Padding(
                    padding: EdgeInsets.only(right: 7.5),
                    child: Text(
                      "I agree to the terms and conditions and the privacy policy",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Color.fromARGB(248, 255, 255, 255),
                      ),
                    ),
                  ),
                  value: policy,
                  onChanged: (onPolicycheck) {
                    setState(
                      () {
                        policy = onPolicycheck!;
                      },
                    );
                  },
                ),
              ),

              // alignment: Alignment.bottomCenter,
              const Spacer(flex: 1),
              ButtonLogin(
                policy: policy,
                backgroundColor: Colors.orange,
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Lato',
                      fontSize: 20.5),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "don't have any account yet ?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Lato',
                          color: Colors.white,
                          fontSize: 13),
                    ),
                    GestureDetector(
                      onTap: () {
                        //NAVIGATION KE SIGN UP PAGE
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      child: const Text(
                        "  Create a new account !",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 13.9,
                          color: Color.fromARGB(255, 255, 231, 11),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
    required this.policy,
    required this.child,
    required this.backgroundColor,
  });

  final bool policy;
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: policy ? backgroundColor : Colors.grey,
          shadowColor: const Color.fromARGB(221, 92, 92, 92),
          elevation: 3.9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          fixedSize: Size(MediaQuery.of(context).size.width * 0.79, 50),
        ),
        onPressed: policy
            ? () {
                Navigator.of(context).pushNamed(HomePage.route);
              }
            : null,
        child: child,
      ),
    );
  }
}
