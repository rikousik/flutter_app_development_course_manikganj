import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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
      backgroundColor: const Color(0xFFe7ded7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFe7ded7),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.grey,
            iconSize: 30,
            icon: const Icon(Icons.chevron_left_outlined)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.grey,
              iconSize: 30,
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'asset/perfume.png',
              width: 200,
            ),
            Container(
              height: 350,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: SizedBox(
                        width: 60,
                        child: Divider(
                          thickness: 4,
                          color: Colors.grey,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Channel',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Very good perfume',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        Text('USD 24.30',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  Text(
                    details,
                    maxLines: 3,
                    style: const TextStyle(color: Colors.black45),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
