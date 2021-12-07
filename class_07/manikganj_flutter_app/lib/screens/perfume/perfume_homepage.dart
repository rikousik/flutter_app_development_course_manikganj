import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfumeHomePage extends StatelessWidget {
  PerfumeHomePage({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> flavours = [
    {'name': 'Coffee', 'icon': Icons.coffee, 'stock': 11},
    {'name': 'Plane', 'icon': CupertinoIcons.airplane, 'stock': 11},
    {'name': 'Smoke Free', 'icon': Icons.smoke_free, 'stock': 11},
    {'name': 'Human', 'icon': Icons.accessibility_new_outlined, 'stock': 11}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    'Select Your\nFavourite Products',
                    style: GoogleFonts.roboto(
                        fontSize: 40, fontWeight: FontWeight.w600),
                    // style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Text('Find a wide variety of perfume products',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    margin: EdgeInsets.symmetric(vertical: 40),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.search, color: Colors.grey),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Find your perfume',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                          CupertinoIcons.square_fill_line_vertical_square,
                          color: Colors.white))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text('Categories',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 75,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: flavours.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.all(5),
                        child: Row(children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(flavours[index]['icon']),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                flavours[index]['name'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${flavours[index]['stock']} now",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              )
                            ],
                          )
                        ]),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
