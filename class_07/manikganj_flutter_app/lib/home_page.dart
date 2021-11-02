import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manikganj_flutter_app/screens/column_page.dart';
import 'package:manikganj_flutter_app/screens/flag_page.dart';
import 'package:manikganj_flutter_app/screens/row_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          titleTextStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FlagPage()));
                },
                child: const Text('Flag Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ColumnPage()));
                },
                child: const Text('Column Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => RowPage()));
                },
                child: const Text('Row Page'))
          ],
        ));
  }
}
