import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manikganj_flutter_app/data/news_paper_class.dart';

class AdvanceNewsPaper extends StatelessWidget {
  final NewsPaperClass newsData;
  const AdvanceNewsPaper(this.newsData, {Key? key}) : super(key: key);
  final String newsPaperName = "bdnews24.com";

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
                newsPaperName,
                style: TextStyle(fontSize: 25, color: Colors.red.shade800),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Text(
                newsData.title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Colors.black,
                thickness: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      newsData.imageLink,
                      width: 100,
                    ),
                    Image.network(
                      newsData.imageLink,
                      width: 100,
                    ),
                    Image.network(
                      newsData.imageLink,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Text(
                newsData.aboutImage,
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
                            image: NetworkImage(newsData.writerImageLink),
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
                          Text(newsData.writerName,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          Text(newsData.date,
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
                newsData.news,
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      )),
    );
  }
}
