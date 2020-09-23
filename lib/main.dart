import 'package:flutter/material.dart';
import 'package:howcanido/embed-tweet/embed_tweet_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: EmbedTweetView(),
    );
  }
}
