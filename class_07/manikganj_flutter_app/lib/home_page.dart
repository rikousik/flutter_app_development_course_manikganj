import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/screens/advance_news_paper.dart';
import 'package:manikganj_flutter_app/screens/column_page.dart';
import 'package:manikganj_flutter_app/screens/flag_page.dart';
import 'package:manikganj_flutter_app/screens/news_paper.dart';
import 'package:manikganj_flutter_app/screens/row_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RowPage()));
              },
              child: Text('Row page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ColumnPage()));
              },
              child: Text('Column page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FlagPage()));
              },
              child: Text('Flag page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NewsPaper()));
              },
              child: Text('News paper')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AdvanceNewsPaper()));
              },
              child: Text('Advance News paper'))
        ]),
      ),
    );
  }
}
