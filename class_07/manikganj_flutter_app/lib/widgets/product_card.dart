import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              "https://i.etsystatic.com/11956550/r/il/f52c62/3473559131/il_794xN.3473559131_9yw8.jpg"),
          const Text(
            "Designer bags for cristmas",
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            "DARAZ",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.black,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.black,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.black,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.black,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.black,
                size: 15,
              ),
              Text(
                "(5,490)",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Row(
            children: const [
              Text(
                "USD 2.45",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                "USD 3.50",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    decoration: TextDecoration.lineThrough),
              ),
              Text(
                " (30% off)",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
