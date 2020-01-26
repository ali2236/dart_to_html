import 'dart:html';

import 'package:dart2html/dart2html.dart';

class Center extends HtmlElement {

  final HtmlElement child;

  Center({this.child});

  @override
  Element build() {
    return Align.center(child: child).build();
  }

}


class Align extends HtmlElement {

  final HtmlElement child;

  final String alignmentClass;

  Align._(this.alignmentClass, this.child);

  factory Align.center({HtmlElement child}) => Align._('center', child);

  factory Align.topRight({HtmlElement child}) => Align._('top-right', child);

  factory Align.bottomRight({HtmlElement child}) => Align._('bottom-right', child);

  factory Align.topLeft({HtmlElement child}) => Align._('top-left', child);

  factory Align.bottomLeft({HtmlElement child}) => Align._('bottom-left', child);

  @override
  Element build() {
    var parent = DivElement();
    parent.classes.add('alignment-parent');

    var child = DivElement();
    child.classes.add(alignmentClass);

    if(child != null){
      child.children.add(this.child.build());
    }

    parent.children.add(child);

    return parent;
  }

}