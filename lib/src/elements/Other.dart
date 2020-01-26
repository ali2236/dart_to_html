import 'dart:html';

import 'package:dart2html/dart2html.dart';

class Code extends HtmlElement {

  final String code;

  Code({this.code});

  @override
  Element build() {
    var c = Element.pre();
    c.text = code;
    return c;
  }

}

class Html extends HtmlElement {

  final String html;

  Html(this.html);

  @override
  Element build() {
    var div = Element.div();
    div.innerHtml = html;
    return div;
  }


}