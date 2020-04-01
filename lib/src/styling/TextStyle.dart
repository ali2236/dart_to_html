import 'dart:html';

import 'package:dart2html/src/styling/ElementStyle.dart';

enum TextType { p, h1, h2, h3, h4, h5, h6, label }

class TextStyle extends ElementStyle{
  final String fontFamily;
  final String fontSize;
  final String fontWight;
  final String color;

  TextStyle({this.fontFamily, this.fontSize, this.fontWight, this.color});

  @override
  CssStyleDeclaration build() {
    var style = CssStyleDeclaration();
    style.color = color;
    style.fontWeight = fontWight;
    style.fontSize = fontSize;
    style.fontFamily = fontFamily;
    return style;
  }

  @override
  // TODO: implement elementClass
  String get elementClass => null;


}
