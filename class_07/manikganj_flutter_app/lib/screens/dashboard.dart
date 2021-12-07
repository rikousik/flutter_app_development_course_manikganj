import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/widgets/dashboard_background.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('asset/perfume.png'),
          const DashboardBackground(),
        ],
      ),
    );
  }
}
