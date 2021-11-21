import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.etsystatic.com/19311499/r/il/b4be61/1839533908/il_794xN.1839533908_lgk6.jpg'),
                    fit: BoxFit.cover)),
          ),
          const Text(
            "Anniversary Gift for him",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                size: 14,
              ),
              Icon(Icons.star, size: 14),
              Icon(Icons.star, size: 14),
              Icon(Icons.star, size: 14),
              Icon(Icons.star, size: 14),
              Text("(18,500)")
            ],
          ),
          Row(
            children: const [
              Text(
                "USD 29.99",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  "USD 74.97",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.green),
                ),
              ),
              Text(
                "(60% off)",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
              ),
            ],
          )
        ],
      ),
    );
  }
}
