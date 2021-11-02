import 'package:flutter/material.dart';

class FlagPage extends StatefulWidget {
  FlagPage({Key? key}) : super(key: key);

  @override
  _FlagPageState createState() => _FlagPageState();
}

class _FlagPageState extends State<FlagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:
              const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 50,
              ),
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 50,
              ),
              const Icon(
                Icons.star,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
