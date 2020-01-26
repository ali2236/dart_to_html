import 'dart:html';

abstract class ElementStyle {

  String get elementClass;

  const ElementStyle();

  CssStyleDeclaration build();



}