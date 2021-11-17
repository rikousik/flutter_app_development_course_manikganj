import 'package:flutter/material.dart';

class Stateful2 extends StatefulWidget {
  Stateful2({Key? key}) : super(key: key);

  @override
  _Stateful2State createState() => _Stateful2State();
}

class _Stateful2State extends State<Stateful2> {
  bool isRectangle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                    color: isRectangle ? Colors.green : Colors.orange,
                    shape: isRectangle ? BoxShape.rectangle : BoxShape.circle),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isRectangle = !isRectangle;
                    });
                  },
                  child: Text("change shape"))
            ],
          )),
    );
  }
}
