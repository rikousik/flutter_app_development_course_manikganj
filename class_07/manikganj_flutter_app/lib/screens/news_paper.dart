import 'package:flutter/material.dart';

class NewsPaper extends StatelessWidget {
  const NewsPaper({Key? key}) : super(key: key);

  final String title = "OP-ED: What would the world be like at 3C of warming?";
  final String date = " Published at 07:09 pm November 3rd, 2021";
  final String image =
      'https://media-eng.dhakatribune.com/uploads/2021/11/unnamed-1635944939783.jpg';
  final String news = """And how would it be different from 1.5C?
  

In the Paris Agreement, countries committed to seek to limit the increase in temperature to 1.5C above pre-industrial levels. However, even if countries fulfilled their current pledges to reduce emissions, we would still see an increase of around 2.7C. No wonder that nearly two thirds of Intergovernmental Panel on Climate Change (IPCC) authors who responded to a new survey conducted by the journal Nature expect the increase to be 3C or more.

So how different would the impacts of climate change be at 3C compared to 1.5C?

At the outset, it is important to point out that -- even if impacts increased in line with temperature -- the impacts at 3C warming would be more than twice those at 1.5C. This is because we already have an increase of around 1C above pre-industrial levels, so impacts at 3C would be four times as great as at 1.5C (an increase from now of 2C compared with 0.5C).

In practice, however, impacts do not necessarily increase linearly with temperature. In some cases, the increase accelerates as temperature rises, so the impacts at 3C may be much more than four times the impacts at 1.5C. At the most extreme, the climate system may pass some “tipping point” leading to a step change.

Two years ago, colleagues and I published research looking at the impacts of climate change at different levels of global temperature increase. We found that, for example, the global average annual chance of having a major heatwave increases from around 5% over the period 1981-2010 to around 30% at 1.5C but 80% at 3C. The average chance of a river flood currently expected in 2% of years increases to 2.4% at 1.5C, and doubles to 4% at 3C. At 1.5C, the proportion of time in drought nearly doubles, and at 3C it more than triples.

There is, of course, some uncertainty around these figures, as shown in the graphs above where the range of possible outcomes gets wider as temperature increases. There is also variability across the world, and this variability also increases as temperature rises, increasing geographical disparities in impact. River flood risk would increase particularly rapidly in South Asia, for example, and drought increases at faster than the global rate across much of Africa.

The difference between 1.5C and 3C can be stark even in places like the UK where the impacts of climate change will be relatively less severe than elsewhere. In a recent study, colleagues and I found that in England the average annual likelihood of a heatwave as defined by the Met Office increases from around 40% now to around 65% at 1.5C and over 90% at 3C, and at 3C the chance of experiencing at least one day in a year with high heat stress is greater than 50%.

The average proportion of time in drought increases at a similar rate to the global average. The chances of what is currently considered a 10-year flood increases in the northwest of England from 10% each year now to 12% at 1.5C and 16% at 3C. As at the global scale, there is considerable variability in impact across the UK, with risks related to high temperature extremes and drought increasing most in the south and east, and risks associated with flooding increasing most in the north and west. 

Again, there is lots of uncertainty around some of these estimates, but the general direction of change and the difference between impacts at different levels of warming is clear.

Our experience during Covid-19 tells us that what appear to be relatively modest initial perturbations to a system can lead to major and unanticipated knock-on effects, and we can expect this with climate change too. If the relationship between temperature increases and physical impacts like melting glaciers or extreme weather is often non-linear, then the relationship between temperature increases and the effects on people, societies, and economies is likely to be very highly non-linear. All this means a 3C world will be a lot worse than a 1.5C world. 

Nigel Arnell is Professor of Climate Change Science, Director of the Walker Institute, University of Reading. This article previously appeared on The Conversation and has been reprinted by special arrangement.""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.file_copy_rounded,
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
                  child: Image.network(image),
                ),
                Text(
                  news,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
