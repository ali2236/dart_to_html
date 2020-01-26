import 'dart:html';

abstract class ElementStyle {

  String get elementClass;

  CssStyleDeclaration build();

}