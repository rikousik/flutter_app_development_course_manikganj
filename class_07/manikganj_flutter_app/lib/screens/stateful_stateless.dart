import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool roomColorOn = true;
  bool dimLighOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: roomColorOn ? Colors.white : Colors.black,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        roomColorOn = false;
                      });
                    },
                    color: dimLighOn
                        ? Colors.yellow
                        : roomColorOn
                            ? Colors.black
                            : Colors.grey,
                    iconSize: 50,
                    icon: dimLighOn
                        ? Icon(Icons.light_mode)
                        : Icon(Icons.light_mode_outlined)),
                Switch(
                    value: dimLighOn,
                    onChanged: (bool value) {
                      setState(() {
                        dimLighOn = value;
                      });
                    }),
                IconButton(
                    onPressed: () {
                      setState(() {
                        roomColorOn = true;
                      });
                    },
                    color: dimLighOn
                        ? Colors.yellow
                        : roomColorOn
                            ? Colors.black
                            : Colors.grey,
                    iconSize: 50,
                    icon: dimLighOn
                        ? Icon(Icons.lightbulb)
                        : Icon(Icons.lightbulb_outline))
              ],
            ),
          )),
    );
  }
}
