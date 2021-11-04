import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/screens/column_page.dart';
import 'package:manikganj_flutter_app/screens/flag_page.dart';
import 'package:manikganj_flutter_app/screens/news_page.dart';
import 'package:manikganj_flutter_app/screens/row_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FlagPage()));
                },
                child: const Text('Flag page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ColumnPage()));
                },
                child: const Text('Column page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const RowPage()));
                },
                child: const Text('Row page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NewsPage()));
                },
                child: const Text('News page')),
          ],
        ),
      ),
    );
  }
}
