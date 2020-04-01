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
  final String id;
  final String name;
  final String placeholder;

  TextField({this.id, this.name, this.placeholder});

  @override
  Element build() {
    var inTxt = Input(type: 'text').build() as InputElement;
    inTxt.id = id;
    inTxt.placeholder = placeholder;
    inTxt.name = name;
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
