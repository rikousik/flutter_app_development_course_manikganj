import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.star,
                size: 60,
              ),
              Icon(Icons.polymer, size: 60),
              Icon(Icons.check_box_outline_blank_outlined, size: 60)
            ],
          ),
        ),
      ),
    );
  }
}
