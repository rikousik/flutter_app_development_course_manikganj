import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final String title = 'Two missing as boat capsizes in Shitalakkhya River';
  final String banglaTitle = 'ডিজেল-কেরোসিনের দাম ২৩% বাড়ল';
  final String date = ' Published at 12:28 am November 4th, 2021';
  final String news = '''
Nearly two dozen passengers managed to swim to shore As many as two women were reported missing as a passenger boat sank in Shitalakkha on Wednesday night.

The accident occured at the Chonpara-Noapara terminal of Rupganj in Narayanganj around 9pm.

The missing people are Chitti,17, and Jabeda, 40, confirmed Chonpara police outpost Sub-Inspector Montu Kumar Das.

According to the police, the boat started for Noapara with 20 passengers and suddenly sank mid-river.

Most of the passengers managed to swim to shore. According to the survivors, two of the passengers have not been found.  

Upon information, a team of River police initiated search and rescue while the fire service was notified.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.document_scanner,
                      color: Colors.grey,
                    ),
                    Text(
                      date,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 15),
                  child: Image.network(
                      'https://media-eng.dhakatribune.com/uploads/2020/10/unnamed-1602768839280.jpg'),
                ),
                Text(news)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
