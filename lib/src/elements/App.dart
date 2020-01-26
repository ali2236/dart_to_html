import 'package:dart2html/dart2html.dart';

class Scaffold extends HtmlElement {

  final HtmlElement child;

  Scaffold({this.child});

  @override
  Element build() {
    var div = DivElement();
    div.classes.add('scaffold');
    if(child != null){
      div.children.add(child.build());
    }

    return div;
  }

}