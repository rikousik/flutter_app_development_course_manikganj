import 'package:flutter/material.dart';

class DashboardBackground extends StatelessWidget {
  const DashboardBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              image: DecorationImage(
                  image: AssetImage('asset/home_bg.png'), fit: BoxFit.cover)),
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(10)),
            child: const Text("Welcome to \nInternet Bill",
                style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
        )
      ],
    );
  }
}
