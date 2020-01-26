// TODO

import 'dart:html';

import 'package:dart2html/dart2html.dart';

class Button extends HtmlElement {
  final String href;
  final HtmlElement child;
  final String text;
  final EventListener onClick;
  final bool captureClick;

  Button(
      {this.text,
      String id,
      this.child,
      this.href = '#',
      this.onClick,
      this.captureClick,
      })
      : super(id);

  @override
  Element build() {
    var btn = ButtonElement();
    btn.id = id;
    btn.text = text;
    btn.attributes.addAll({'href': href});
    btn.addEventListener('click', onClick, captureClick);
    if(child!=null){
      btn.children.add(child.build());
    }
    return btn;
  }
}

class Input extends HtmlElement {
  final String type;

  Input({this.type});

  @override
  Element build() {
    var input = InputElement(type: type);
    return input;
  }
}

class TextField extends HtmlElement {
  final String name;

  TextField({this.name});

  @override
  Element build() {
    var inTxt = Input(type: 'text').build();
    inTxt.attributes.addAll({'name': name});
    return inTxt;
  }
}

class TextBox extends HtmlElement {
  @override
  Element build() {
    var ta = Element.textarea();
    return ta;
  }
}
