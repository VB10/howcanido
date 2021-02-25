import 'package:flutter/material.dart';

class LessonDetail extends StatelessWidget {
  final String lessonName;

  const LessonDetail({Key key, this.lessonName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(lessonName),
      ),
    );
  }
}
