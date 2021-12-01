import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/screens/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String email = "flutter@google.com";
  final String pass = "abc123";
  bool loggedIn = false;

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
            ),
            TextField(
              controller: passController,
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Dashboard()));
                  // if (emailController.text == email &&
                  //     passController.text == pass) {
                  //   setState(() {
                  //     loggedIn = true;
                  //   });
                  // } else {
                  //   setState(() {
                  //     loggedIn = false;
                  //   });
                  // }
                },
                child: const Text('Login')),
            const SizedBox(
              height: 30,
            ),
            if (loggedIn)
              const Text(
                "Congratz",
                style: TextStyle(
                  fontSize: 30,
                ),
              )
          ],
        ),
      ),
    );
  }
}
