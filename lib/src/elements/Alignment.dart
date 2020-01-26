import 'dart:html';
import 'dart:math';

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

  factory Align.bottomRight({HtmlElement child}) =>
      Align._('bottom-right', child);

  factory Align.topLeft({HtmlElement child}) => Align._('top-left', child);

  factory Align.bottomLeft({HtmlElement child}) =>
      Align._('bottom-left', child);

  @override
  Element build() {
    var parent = DivElement();
    parent.classes.add('alignment-parent');

    var child = DivElement();
    child.classes.add(alignmentClass);

    if (child != null) {
      child.children.add(this.child.build());
    }

    parent.children.add(child);

    return parent;
  }
}

class Padding extends HtmlElement {
  final HtmlElement child;
  final double top, bottom, left, right;

  Padding({
    this.child,
    this.top = 0.0,
    this.bottom = 0.0,
    this.left = 0.0,
    this.right = 0.0,
  });

  Padding.symmetric(
      {this.child, double horizontal = 0.0, double vertical = 0.0})
      : top = vertical,
        bottom = vertical,
        left = horizontal,
        right = horizontal;

  Padding.all({this.child, double padding})
      : top = padding,
        bottom = padding,
        left = padding,
        right = padding;

  @override
  Element build() {
    var div = DivElement();
    div.style.paddingTop = '${top}em';
    div.style.paddingBottom = '${bottom}em';
    div.style.paddingLeft = '${left}em';
    div.style.paddingRight = '${right}em';
    if (child != null) {
      div.children.add(child.build());
    }
    return div;
  }
}
