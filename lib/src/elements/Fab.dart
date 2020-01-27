import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/framework/ComponentManager.dart';

class Fab extends HtmlElement {

  final HtmlElement child;
  final EventListener onClick;
  final String href;

  Fab({this.child, this.onClick, this.href});

  @override
  Element build() {
    var btn = ButtonElement();
    btn.classes.addAll(ComponentManager().getClasses<Fab>());

    btn.attributes.addAll({'href': href});
    btn.addEventListener('click', onClick);

    if(child!=null){
      btn.children.add(child.build());
    }
    return btn;
  }


}