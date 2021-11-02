import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              height: 2,
              width: double.infinity,
            ),
            Icon(
              Icons.book,
              size: 60,
            ),
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.account_balance,
              size: 60,
            ),
            SizedBox(
              height: 100,
            ),
            Icon(
              Icons.ac_unit,
              size: 60,
            )
          ],
        ),
      ),
    );
  }
}
