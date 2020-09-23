import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HtmlHelper {
  static HtmlHelper _instace;
  static HtmlHelper get instance {
    if (_instace == null) _instace = HtmlHelper._init();
    return _instace;
  }

  HtmlHelper._init();

  Widget createTweetWidget(String html) {
    final body = "<blockquote  class=\"twitter-tweet\">$html</blockquote>" +
        '<script async src="https://platform.twitter.com/widgets.js"></script>';

    final dataUrl = Uri.dataFromString(
      '''<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
</head>

<body>$body</body>

</html>''',
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString();

    return FlatButton(
      onPressed: () {},
      child: WebView(
        dataUrl,
        aspectRatio: 0.5,
        interceptNavigationRequest: (url) => false,
        autoResize: true,
      ),
    );
  }

  Widget createImage(String url) {
    return Image.network("https://mobirise.com/extensions/churchamp/$url");
  }
}
