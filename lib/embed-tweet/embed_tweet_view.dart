import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:howcanido/embed-tweet/sample_news.dart';

import 'html_helper.dart';

class EmbedTweetView extends StatefulWidget {
  @override
  _EmbedTweetViewState createState() => _EmbedTweetViewState();
}

class _EmbedTweetViewState extends State<EmbedTweetView> {
  SampleNews news = SampleNews();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: HtmlWidget(
          news.sample1,
          webView: true,
          enableCaching: false,
          customWidgetBuilder: (e) {
            if (e.localName == 'amp-img')
              return HtmlHelper.instance.createImage(e.attributes["src"]);
            else if (e.localName == 'blockquote' && e.attributes['class'] == 'twitter-tweet')
              return HtmlHelper.instance.createTweetWidget(e.innerHtml);
            return null;
          },
        ),
      ),
    );
  }
}
