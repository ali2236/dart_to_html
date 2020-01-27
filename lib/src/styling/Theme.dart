import 'dart:html';
import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/styling/css/alignment.dart';
import 'package:dart2html/src/styling/css/app.dart';
import 'package:dart2html/src/styling/css/flex.dart';

class Theme extends HtmlElement {
  final HtmlElement child;
  final String accentColor;
  final List<Framework> frameworks;

  Theme({
    this.child,
    this.accentColor,
    this.frameworks,
  });

  @override
  Element build() {
    addStyles();
    addScripts();
    initFrameworks();
    if (child != null) {
      return child.build();
    } else {
      return Element.div();
    }
  }

  void initFrameworks() {
    if (frameworks != null) {
      frameworks.forEach((f) {
        f.theme = this;
        f.addStyles();
        f.addScripts();
        f.registerComponents();
      });
    }
  }

  void addStyles() async {
    var head = document.head;
    var style = StyleElement();
    style.type = 'text/css';
    style.innerHtml =
        flex_css.minified + alignment_css.minified + app_css.minified;
    head.append(style);
  }

  void addScripts() async {}
}
