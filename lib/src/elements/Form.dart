// TODO

import 'dart:html';

import 'package:dart2html/dart2html.dart';



class Input extends HtmlElement {
  final String type;

  Input({this.type});

  @override
  Element build() {
    var input = InputElement(type: type);
    return input;
  }
}

class TextField extends HtmlElement {
  final String name;

  TextField({this.name});

  @override
  Element build() {
    var inTxt = Input(type: 'text').build();
    inTxt.attributes.addAll({'name': name});
    return inTxt;
  }
}

class TextBox extends HtmlElement {
  @override
  Element build() {
    var ta = Element.textarea();
    return ta;
  }
}
