import 'package:flutter/material.dart';
import 'package:muggis_quiz/shared/progress_bar.dart';
import 'package:muggis_quiz/topic/drawer.dart';
import '../services/models.dart';

class TopicItem extends StatelessWidget {
  final Topic topic;
  const TopicItem({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: topic.img,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => TopicScreen(topic: topic),
              ),
            );
          },
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: SizedBox(
                    child: Image.network(
                      'https://1221creative.com/wp-content/uploads/2020/01/Javascript-Illustration.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        topic.title,
                        style: const TextStyle(
                            height: 1.5, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      )),
                ),
                Flexible(child: TopicProgress(topic: topic)),
              ]),
        ),
      ),
    );
  }
}

class TopicScreen extends StatelessWidget {
  final Topic topic;
  const TopicScreen({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(children: [
        Hero(
          tag: topic.img,
          child: Image.network(
            'https://1221creative.com/wp-content/uploads/2020/01/Javascript-Illustration.png',
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Text(
          topic.title,
          style: const TextStyle(
              height: 2, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        QuizList(topic: topic),
      ]),
    );
  }
}
