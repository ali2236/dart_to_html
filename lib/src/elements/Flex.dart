import 'dart:html';

import 'package:dart2html/dart2html.dart';

class Column extends HtmlElement {
  final List<HtmlElement> children;

  Column({this.children = const []});

  @override
  Element build() {
    var col = Element.div();
    col.classes.add('column');
    col.children.addAll(children.map((e) => e.build()));
    return col;
  }
}

class Row extends HtmlElement {

  final List<HtmlElement> children;

  Row({this.children = const []});

  @override
  Element build() {
    var row = Element.div();
    row.classes.add('row');
    row.children.addAll(children.map((e) => e.build()));
    return row;
  }

}