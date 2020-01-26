import 'dart:html';
import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/Scripts/material.dart';
import 'package:dart2html/src/styling/css/alignment.dart';
import 'package:dart2html/src/styling/css/app.dart';
import 'package:dart2html/src/styling/css/flex.dart';
import 'package:dart2html/src/styling/css/material.dart';

class Theme extends HtmlElement {
  final HtmlElement child;
  final String accentColor;

  Theme({this.child, this.accentColor});

  @override
  Element build() {
    addStyles();
    addScripts();
    if (child != null) {
      return child.build();
    } else {
      return Element.div();
    }
  }

  void addStyles(){
    var defaultAccentColor = '#ff4081';

    var matcss = material_css.css;
    if(accentColor != null) {
      matcss = matcss.replaceAll(defaultAccentColor, accentColor);
    }

    var head = document.head;
    var style = StyleElement();
    style.type = 'text/css';
    style.innerHtml = flex_css.minified +
        alignment_css.minified +
        app_css.minified + matcss;
    head.append(style);
  }

  void addScripts(){

    var body = document.body;
    var script = ScriptElement();
    script.type = 'text/javascript';
    script.innerHtml = material_js;
    body.append(script);
  }
}
