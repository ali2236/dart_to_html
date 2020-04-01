import 'dart:html';

import 'package:dart2html/dart2html.dart';


class Container extends HtmlElement {

  final HtmlElement child;

  Container({this.child});

  @override
  Element build() {
    var div = Element.div();
    if(child != null){
      div.children.add(child.build());
    }
    return div;
  }

}

class Text extends HtmlElement {
  final String id;
  final String text;
  final TextType textType;
  final TextStyle textStyle;

  Text(this.text,{this.textType = TextType.p, this.textStyle, this.id});

  @override
  Element build() {
    var txt = Element.tag(textType.toString().substring(9));
    txt.id = id;
    txt.text = text;
    txt.attributes.addAll({'style': textStyle?.build()?.cssText});
    return txt;
  }
}

class Image extends HtmlElement {
  final String src;

  Image(this.src);

  @override
  Element build() {
    var img = Element.img();
    img.attributes.addAll({'src': src});
    return img;
  }
}

class Link extends HtmlElement {
  final String href;
  final HtmlElement child;

  Link(this.href, {this.child});

  @override
  Element build() {
    var a = Element.a();
    a.attributes.addAll({'href': href});
    a.children.add(child.build());
    return a;
  }
}