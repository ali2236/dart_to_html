import 'dart:html';

import 'package:dart2html/dart2html.dart';

class Column extends HtmlElement {
  final List<HtmlElement> children;
  final String id;

  Column({this.id, this.children = const []});

  @override
  Element build() {
    var col = Element.div();
    col.id = id;
    col.classes.add('column');
    col.children.addAll(children.map((e) => e.build()));
    return col;
  }
}

class Row extends HtmlElement {
  final String id;
  final List<HtmlElement> children;

  Row({this.id, this.children = const []});

  @override
  Element build() {
    var row = Element.div();
    row.id = id;
    row.classes.add('row');
    row.children.addAll(children.map((e) => e.build()));
    return row;
  }

}