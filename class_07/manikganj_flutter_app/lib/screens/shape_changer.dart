import 'package:flutter/material.dart';

class ShapeChanger extends StatefulWidget {
  ShapeChanger({Key? key}) : super(key: key);

  @override
  _ShapeChangerState createState() => _ShapeChangerState();
}

class _ShapeChangerState extends State<ShapeChanger> {
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
                  shape: isRectangle ? BoxShape.rectangle : BoxShape.circle,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isRectangle = !isRectangle;
                      print(isRectangle);
                    });
                  },
                  child: Text("Tap to change shape"))
            ],
          )),
    );
  }
}
