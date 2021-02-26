import 'package:flutter/material.dart';
import 'package:howcanido/turkish-lesson/core/lesson.dart';
import 'package:howcanido/turkish-lesson/core/string_items.dart';
import 'package:howcanido/turkish-lesson/lesson_detail.dart';

//MARK: Eger bir sayfa yapiyorsak baslangica stetful yaparak daha rahat kodlayabilriz
class TurkishLessonView extends StatefulWidget {
  @override
  _TurkishLessonViewState createState() => _TurkishLessonViewState();
}

class _TurkishLessonViewState extends State<TurkishLessonView> {
  //MARK: Projenin string valueleri bir sinifta
  final StringItems stringItems = StringItems();

  //MARK: Projenin sinif veya dersleri bir sinif icinde
  final Lesson lesson = Lesson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(stringItems.lessonTitle)),
      body: ListView.builder(
        itemCount: lesson.lessonPageItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lesson.lessonPageItems[index].title),
            onTap: () {
              _navigateDetailPage(index);
            },
          );
        },
      ),
    );
  }

  //MARK: File Private  yaparak methodu baske yerlerden erismeyi kapatiyoruz
  // MARK: index degeri dokunlan itemin indexi
  void _navigateDetailPage(int index) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => lesson.lessonPageItems[index].page));
  }
}
