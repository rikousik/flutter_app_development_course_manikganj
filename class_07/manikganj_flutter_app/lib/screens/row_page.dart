import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Page'),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
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
