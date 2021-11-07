import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class AdvanceNewsPaper extends StatelessWidget {
  const AdvanceNewsPaper({Key? key}) : super(key: key);

  final String title = "The mystery of ‘Havana syndrome";
  final String imageLink =
      "https://opinion.bdnews24.com/wp-content/uploads/2021/11/us-embassy-berlin-051121-02.jpg";
  final String aboutImage =
      "Embassy of the United States of America in Berlin, where staff reported experiencing symptoms of the so-called Havana syndrome. Reuters";
  final String credit = "Serge Schmemann";
  final String date = "5th Nov 2021";
  final String news =
      """A long time ago, soon after I arrived in the Soviet Union as a young wire service reporter and became acutely aware that I was being followed, my eye began to twitch.

It became hard to work, so I flew to Paris to have it checked out. By the time I landed the twitching had stopped, and the doctor who checked it out found nothing wrong.

Back in Moscow, at a chance meeting with the US Embassy doctor, I recounted this incident. Nothing strange there, he said: “Everybody gets the ‘Moscow Eye’ soon after they arrive and it soon goes away.”

I took him to mean that it was a nervous reaction to the novel stress of finding oneself in a hostile state, secretly watched and listened to. It was hard on the nerves. Everyone had a story of KGB surveillance, like listening devices falling out of chandeliers or recording equipment spotted behind a closed door. One colleague got freaked out by suspicious flashes of light through the night, until he realised they were sparks from Moscow’s antiquated trolley buses, which drew power from overhead wires. “Just because you’re paranoid doesn’t mean you’re wrong” was the watchword.""";
  final String journalist =
      "https://opinion.bdnews24.com/wp-content/uploads/2021/06/Serge-Schmemann.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Text(
                  'BdNews24.com',
                  style: TextStyle(fontSize: 25, color: Colors.red.shade900),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const Divider(
                  thickness: 4,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.network(imageLink),
                ),
                Text(aboutImage),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(journalist),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Written By',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          Text(
                            credit,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            date,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  news,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
