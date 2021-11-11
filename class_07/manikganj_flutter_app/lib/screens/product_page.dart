import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/main.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool mainLightOn = true;

  bool dimLightOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainLightOn ? Colors.white : Colors.black,
        body: Container(
          height: double.infinity,
          color: Colors.black12,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    mainLightOn = false;
                  });
                },
                iconSize: 50,
                color: dimLightOn
                    ? Colors.amber.shade700
                    : mainLightOn
                        ? Colors.black
                        : Colors.grey,
                icon: dimLightOn
                    ? Icon(Icons.light_mode_rounded)
                    : Icon(Icons.light_mode_outlined)),
            Switch(
                value: dimLightOn,
                onChanged: (bool value) {
                  setState(() {
                    dimLightOn = value;
                  });
                }),
            IconButton(
                onPressed: () {
                  setState(() {
                    mainLightOn = true;
                  });
                },
                iconSize: 50,
                color: dimLightOn
                    ? Colors.amber.shade700
                    : mainLightOn
                        ? Colors.black
                        : Colors.grey,
                icon: dimLightOn
                    ? Icon(Icons.lightbulb)
                    : Icon(Icons.lightbulb_outline)),
          ]),
        ),
      ),
    );
  }
}




/*

if(dimLisght ){
  color = Colors.yellow;
}else{
  color = Colors.black;
}


dimlight?Colors.yellow : Colors.black


*/
