import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PerfumeDetails extends StatelessWidget {
  const PerfumeDetails({Key? key}) : super(key: key);

  final String details =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed aliquet risus. Etiam gravida, quam eget suscipit dapibus, est mauris feugiat orci, et aliquet ante libero at orci. Phasellus sapien odio, consectetur eget interdum et, dapibus eget sapien. Nunc pulvinar mauris a turpis scelerisque tristique. Sed egestas, elit ac tempus dignissim, augue ante vehicula lectus, ac sagittis enim dui vitae est. Quisque volutpat dignissim leo, a condimentum nunc malesuada at. Pellentesque at ante eget urna vehicula hendrerit. Mauris dui lacus, condimentum eu dapibus quis, vestibulum sollicitudin est.";

  final List<String> similarPs = const [
    'asset/p1.png',
    'asset/p2.png',
    'asset/p3.png',
    'asset/p4.png',
    'asset/p5.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe7ded7),
      appBar: AppBar(
        backgroundColor: Color(0xFFe7ded7),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.black,
            icon: Icon(Icons.chevron_left_outlined)),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'asset/perfume.png',
            height: 180,
          ),
          Container(
            width: double.infinity,
            height: 400,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: 50,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 3,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Channel",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Ladies Perfume",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$135.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Text(
                  details,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Similar this",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: similarPs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(similarPs[index]),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color(0xFFe7ded7),
                              borderRadius: BorderRadius.circular(15)),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.favorite_border),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 0.5)),
                    ),
                    SizedBox(
                      height: 45,
                      width: 300,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Text('+Add to cart')),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
