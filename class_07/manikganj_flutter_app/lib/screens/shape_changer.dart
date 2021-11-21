import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/widgets/product_card.dart';

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
      backgroundColor: Colors.grey.shade200,
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.symmetric(vertical: 50),
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
                  child: Text("Change shape"))
            ],
          )),
    );
  }
}
