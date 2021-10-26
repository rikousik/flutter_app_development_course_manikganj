import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String anyString = "Happy Birthday\nPorimoni";
  Color boxColor = Colors.red;

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Hello Manikganj'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            anyFunction();
          },
          onTapDown: (details) {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          onTapUp: (details) {
            setState(() {
              boxColor = Colors.red[50]!;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: boxColor,
            alignment: Alignment.center,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = true;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: likeButtonColor(),
                    )),
                Text(
                  anyString,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color likeButtonColor() {
    if (isLiked == true) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  void anyFunction() {
    setState(() {
      anyString = "Treat dao";
    });
  }
}
