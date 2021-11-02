import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  RowPage({Key? key}) : super(key: key);

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black12,
          height: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.book,
                size: 60,
              ),
              Icon(
                Icons.account_balance,
                size: 60,
              ),
              Icon(
                Icons.ac_unit,
                size: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
