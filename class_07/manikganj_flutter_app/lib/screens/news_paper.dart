import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewsPaper extends StatelessWidget {
  const NewsPaper({Key? key}) : super(key: key);
  final String title =
      "Tigers to return home Friday, four players to return later";
  final String date = " Published at 03:05 am November 5th, 2021";
  final String imageLink =
      "https://media-eng.dhakatribune.com/uploads/2021/10/qb8hj-1-1635288769179.jpg";

  final news =
      """Bangladesh have lost all of their five super 12 stage matches in the T20 World Cup


Bangladesh cricket team will return home on Friday after finishing their T20 World Cup campaign. 

But four players, skipper Mahmudullah, middle order batsman Mushfiqur Rahim, opener Liton Kumar Das and pacer Taskin Ahmed will stay at UAE and will return later, informed Bangladesh team selector Habibul Bashar to the media on Thursday. 

Bangladesh have lost all of their five super 12 stage matches in the World Cup. 

“The team will board in two separate flights on 10.30 am and 4.30 pm on Friday. Mahmudullah, Mushfiqur, Liton and Taskin however will return separately later,” Bashar said. 

Head coach Russell Domingo and the other coaching staff will be on leave and will return to Bangladesh on November 11.  

"Members of the coaching staff will also not travel with the team as they will have a break till November 11 ahead of the Pakistan series at home," Bashar added. 

Bangladesh will play a three match T20I series this month at home and the first match will take place on November 19 at SBNS, Mirpur.""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.file_copy,
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
                  child: Image.network(imageLink),
                ),
                Text(
                  news,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
