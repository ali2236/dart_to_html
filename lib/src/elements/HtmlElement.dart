import 'dart:html';

abstract class HtmlElement {
  final String id;

  HtmlElement([this.id]);

  Element build();
}