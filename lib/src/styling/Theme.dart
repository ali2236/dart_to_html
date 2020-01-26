import 'dart:html';
import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/styling/css/alignment.dart';
import 'package:dart2html/src/styling/css/flex.dart';

class Theme extends HtmlElement{

  final HtmlElement child;

  Theme(this.child);

  @override
  Element build() {
    var head = document.getElementsByTagName('head')[0];
    var style = StyleElement();
    style.type = 'text/css';
    style.innerHtml = flex_css.minified + alignment_css.minified;
    head.append(style);
    return child.build();
  }

}