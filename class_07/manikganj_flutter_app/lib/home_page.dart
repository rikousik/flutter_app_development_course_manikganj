import 'package:flutter/material.dart';
import 'package:manikganj_flutter_app/data/news_paper_class.dart';
import 'package:manikganj_flutter_app/screens/advance_news_paper.dart';
import 'package:manikganj_flutter_app/screens/column_page.dart';
import 'package:manikganj_flutter_app/screens/flag_page.dart';
import 'package:manikganj_flutter_app/screens/news_paper.dart';
import 'package:manikganj_flutter_app/screens/product_page.dart';
import 'package:manikganj_flutter_app/screens/row_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final NewsPaperClass news1 = NewsPaperClass(
      "The mystery of ‘Havana syndrome’",
      "https://opinion.bdnews24.com/wp-content/uploads/2021/11/us-embassy-berlin-051121-02.jpg",
      "Embassy of the United States of America in Berlin, where staff reported experiencing symptoms of the so-called Havana syndrome. Reuters",
      "Serge Schmemann",
      "https://opinion.bdnews24.com/wp-content/uploads/2019/01/farhad-manjoo.jpg",
      "5th Nov 2021",
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

""");
  final NewsPaperClass news2 = NewsPaperClass(
      "The mystery of ‘Havana syndrome’",
      "https://opinion.bdnews24.com/wp-content/uploads/2021/11/us-embassy-berlin-051121-02.jpg",
      "Embassy of the United States of America in Berlin, where staff reported experiencing symptoms of the so-called Havana syndrome. Reuters",
      "Serge Schmemann",
      "https://opinion.bdnews24.com/wp-content/uploads/2019/01/farhad-manjoo.jpg",
      "5th Nov 2021",
      """One of the most unsettling revelations in the cache of internal documents leaked by former Facebook employee Frances Haugen has been just how little we know about Facebook and consequently how unprepared our political culture is to do anything about it, whatever it is.

That’s the first problem in fixing Facebook — there isn’t much agreement about what, exactly, the problem with Facebook is. The left says it’s Facebook’s amplification of hate, extremism and misinformation about, among other things, vaccines and the last presidential election. President Joe Biden put it bluntly this summer: “They’re killing people.”

Former President Donald Trump and others on the right say the opposite: Social media giants are run by liberals bent on silencing opposing views. In a statement last week, Trump called Mark Zuckerberg, Facebook’s founder, “a criminal” who altered “the course of a Presidential Election.”

Beyond concerns about the distortion of domestic politics, there are a number of other questions about Facebook, Instagram and WhatsApp — all of which, Zuckerberg announced last week, are now under a new corporate umbrella called Meta. Is Instagram contributing to anxiety and body-shaming among teenagers? Are Facebook’s outrage-juicing algorithms destabilising developing countries, where the company employs fewer resources to monitor its platform than it does in its large markets? Is Facebook perpetuating racism through biased algorithms? Is it the cause of global polarisation, splitting societies into uncooperative in-groups?
""");
  final NewsPaperClass news3 = NewsPaperClass(
      "OK, but what should we actually do about Facebook? I asked the experts",
      "https://opinion.bdnews24.com/wp-content/uploads/2021/11/us-embassy-berlin-051121-02.jpg",
      "Embassy of the United States of America in Berlin, where staff reported experiencing symptoms of the so-called Havana syndrome. Reuters",
      "Serge Schmemann",
      "https://opinion.bdnews24.com/wp-content/uploads/2019/01/farhad-manjoo.jpg",
      "5th Nov 2021",
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

""");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RowPage()));
              },
              child: const Text('Row page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ColumnPage()));
              },
              child: const Text('Column page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FlagPage()));
              },
              child: const Text('Flag page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const NewsPaper()));
              },
              child: const Text('News paper')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProductPage()));
              },
              child: const Text('Product Page')),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.yellow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdvanceNewsPaper(news1)));
                    },
                    child: const Text("news 1")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdvanceNewsPaper(news2)));
                    },
                    child: const Text("news 2")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdvanceNewsPaper(news3)));
                    },
                    child: const Text("news 3"))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
