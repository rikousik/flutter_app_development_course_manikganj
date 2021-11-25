import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/widgets/product_card.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.only(top: 12, left: 5),
            child: Text(
              'Etsy',
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ),
          centerTitle: true,
          title: Container(
            height: 50,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Search for anything',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(Icons.search, color: Colors.grey)
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: const Icon(Icons.person_outline)),
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: const Icon(Icons.shopping_cart_outlined))
          ],
        ),
        body: Column(
          children: const [ProductCard()],
        ));
  }
}
