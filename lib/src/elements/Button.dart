import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/framework/ComponentManager.dart';

class Button extends HtmlElement {
  final String id;
  final String href;
  final String color;
  final HtmlElement child;
  final String text;
  final EventListener onClick;
  final bool captureClick;

  Button(
      {this.text,
        this.id,
        this.child,
        this.href,
        this.onClick,
        this.captureClick,
        this.color,
      });

  @override
  Element build() {
    var btn = ButtonElement();
    if(id!=null) btn.id = id;
    if(color!=null) btn.style.backgroundColor = color;
    btn.classes.addAll(ComponentManager().getClasses<Button>());
    btn.text = text;
    btn.attributes.addAll({'href': href});
    btn.addEventListener('click', onClick, captureClick);
    if(child!=null){
      btn.children.add(child.build());
    }
    return btn;
  }
}