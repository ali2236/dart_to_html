import 'dart:html';

import 'package:dart2html/dart2html.dart';

class OrderedList extends HtmlElement {

  final List<ListItem> children;

  OrderedList({this.children = const []});

  @override
  Element build() {
    var ol = Element.ol();
    ol.children.addAll(children.map((e)=>e.build()));
    return ol;
  }
}

class UnorderedList extends HtmlElement {

  final List<ListItem> children;

  UnorderedList({this.children = const []});

  @override
  Element build() {
    var ul = Element.ul();
    ul.children.addAll(children.map((e)=>e.build()));
    return ul;
  }
}

class ListItem extends HtmlElement {

  final HtmlElement child;

  ListItem(this.child);

  @override
  Element build() {
    var li = Element.li();
    li.children.add(child.build());
    return li;
  }

}