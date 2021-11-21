import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Container(
        width: 180,
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://i.etsystatic.com/19311499/r/il/b4be61/1839533908/il_794xN.1839533908_lgk6.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
