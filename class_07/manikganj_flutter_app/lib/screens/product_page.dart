import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Color color = Colors.white;
  bool dimLightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.black;
                    });
                  },
                  color: dimLightOn ? Colors.yellow.shade900 : Colors.black,
                  icon: const Icon(Icons.star)),
              Switch(
                  value: dimLightOn,
                  onChanged: (bool newValue) {
                    setState(() {
                      dimLightOn = newValue;
                    });
                  }),
              IconButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.white;
                    });
                  },
                  color: dimLightOn ? Colors.yellow.shade900 : Colors.black,
                  icon: const Icon(Icons.star)),
            ],
          ),
        ),
      ),
    );
  }
}
