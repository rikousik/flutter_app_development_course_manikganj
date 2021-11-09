import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AdvanceNewsPaper extends StatelessWidget {
  const AdvanceNewsPaper({Key? key}) : super(key: key);
  final String newsPaperName = "bdnews24.com";
  final String title = "The mystery of ‘Havana syndrome’";
  final String imageLink =
      "https://opinion.bdnews24.com/wp-content/uploads/2021/11/us-embassy-berlin-051121-02.jpg";
  final String aboutImage =
      "Embassy of the United States of America in Berlin, where staff reported experiencing symptoms of the so-called Havana syndrome. Reuters";
  final String writer = "Serge Schmemann";
  final String date = "5th Nov 2021";
  final String writerImage =
      "https://opinion.bdnews24.com/wp-content/uploads/2021/06/Serge-Schmemann.jpg";

  final String news =
      """A long time ago, soon after I arrived in the Soviet Union as a young wire service reporter and became acutely aware that I was being followed, my eye began to twitch.

It became hard to work, so I flew to Paris to have it checked out. By the time I landed the twitching had stopped, and the doctor who checked it out found nothing wrong.

Back in Moscow, at a chance meeting with the US Embassy doctor, I recounted this incident. Nothing strange there, he said: “Everybody gets the ‘Moscow Eye’ soon after they arrive and it soon goes away.”

I took him to mean that it was a nervous reaction to the novel stress of finding oneself in a hostile state, secretly watched and listened to. It was hard on the nerves. Everyone had a story of KGB surveillance, like listening devices falling out of chandeliers or recording equipment spotted behind a closed door. One colleague got freaked out by suspicious flashes of light through the night, until he realised they were sparks from Moscow’s antiquated trolley buses, which drew power from overhead wires. “Just because you’re paranoid doesn’t mean you’re wrong” was the watchword.

These memories have resurfaced as I’ve followed the saga of “Havana syndrome,” the neurological symptoms that American diplomats and spies, and some Canadians, started reporting in Cuba in 2016 and have reported in several other places since, most recently Colombia. The symptoms are indisputable and serious — they’ve included headaches, nausea, impaired balance and hearing loss. They’re every bit as real as my twitching eye and, according to the reports, considerably more debilitating.

So is this another consequence of nerves frayed by the invisible eyes and ears of a secret surveillance apparatus? Or is it caused by some dastardly new weapon deployed by America’s enemies — Russia? — to eavesdrop on or harass spies and diplomats?

So far, despite many efforts to explain the “anomalous health incidents” — the bureaucratese assigned to the phenomenon by the government, scientists and investigative journalists — no one has come up with anything conclusive.

A variety of theories have been proposed, generally along the lines of some form of targeted beams or sonic weapons using microwaves or ultrasound, only to be disproved or deemed inconclusive. Among the most celebrated findings was that recordings of the buzzing noises reported in several of the Havana incidents were actually the mating call of a particularly loud cricket, Anurogryllus celerinictus.

Another possibility raised is an outbreak of what used to be called mass hysteria but now goes by less offensive-sounding names like mass psychogenic illness, conversion disorder and functional neurological disorders. The basic idea is that a reaction to some form of stress or trauma can cause a variety of symptoms that cannot be explained by any other disease or condition. Once they appear in one person, moreover, they can spread in a group sharing the same conditions — say, among officials in a hostile setting.

Psychosomatic reactions can be very real and just as debilitating as an illness with a traditional medical explanation. There is nothing shameful about it. Though my eye stopped twitching after that initial episode, I never became accustomed in my years in the Soviet Union to being tailed or assuming that everything I said was being recorded somewhere. I’d know it was time to take a break when I would start doing foolish things like trying to evade the tan Zhiguli (the old Soviet sedan) with the MW3692 plate number through reckless manoeuvres. And I remember the tension lifting as my flight took off from Sheremetyevo Airport.

The 200 or so US officials who have reported neurological symptoms do deserve every effort by the government to get to the bottom of their problem. The trouble is that Havana syndrome has become so deeply enmeshed in the contentious politics of our time that agreement on an objective cause may prove all but impossible.

Despite the absence of any conclusive evidence about what causes it, or any reason it would appear in locations as diverse as India, Colombia, Vietnam, Austria, China, Serbia and Russia, or even a concrete number of officials afflicted, powerful lobbies have concluded that the symptoms are the work of a hostile power, and that this points to Russia. (For the record, Russia and Cuba both deny any role.)

A top State Department official brought back from retirement to coordinate a response to the illness was released after only six months, presumably in part because she would not rule out a mass psychogenic illness. The CIA station chief in Vienna, a hotbed of espionage, was removed in September, purportedly because he did not take the incidents seriously enough.

Marc Polymeropoulos, a former CIA officer who says he was hit by Havana syndrome in Moscow in 2017, wrote on Twitter that failing to rule out “mass hysteria” as a cause was “insulting to victims and automatically disqualifying” for someone to lead the investigation.

In September, Congress unanimously passed the Helping American Victims Afflicted by Neurological Attacks (HAVANA) Act, which will provide financial support to sufferers of the neurological symptoms. Sen. Marco Rubio, R-Fla., who is a son of Cuban exiles and was one of the authors of the bill, dismissed some of those sceptical of the theory that the symptoms were caused by directed-energy attacks as “influence agents” who were paid or encouraged by “foreign government or whatever, that don’t want this to be discussed out there and want to cast doubt about it.”

The sceptics, however, include many serious scientists, such as Cheryl Rofer, a former chemist at the Los Alamos National Laboratory, who wrote in Foreign Policy that no proponent of the directed-energy theory has outlined how such a weapon would work and that any nation has developed one. “Extraordinary claims require extraordinary evidence,” she wrote, “and no evidence has been offered to support the existence of this mystery weapon.”

That does not mean there is no mystery weapon. In fact, thinking back on the Moscow Eye, I realise I never wondered whether it might have been caused by some KGB beam bouncing around my office. But the potential ramifications of such a conclusion for Havana syndrome — and the indisputable neurological symptoms of the Americans who have suffered from it for several years now — demand dispassionate and objective investigation, not speculative bombast.

©2021 The New York Times Company

""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Text(
                newsPaperName,
                style: TextStyle(fontSize: 25, color: Colors.red.shade800),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Colors.black,
                thickness: 4,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'News',
                        style: TextStyle(fontSize: 22),
                      ),
                      VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Text(
                        'Comment',
                        style: TextStyle(fontSize: 22),
                      ),
                      VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Text(
                        '1971',
                        style: TextStyle(fontSize: 22),
                      ),
                      VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Text(
                        'Feature & Analysis',
                        style: TextStyle(fontSize: 22),
                      ),
                      VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Text(
                        'Interview',
                        style: TextStyle(fontSize: 22),
                      ),
                      VerticalDivider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Text(
                        'Writer',
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.network(imageLink),
              ),
              Text(
                aboutImage,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(writerImage),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Written by",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          Text(writer,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          Text(date,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                news,
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      )),
    );
  }
}
