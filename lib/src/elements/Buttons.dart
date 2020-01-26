import 'package:dart2html/dart2html.dart';

class Fab extends HtmlElement {

  final HtmlElement child;
  final bool ripple;
  final EventListener onClick;
  final String href;

  Fab({this.child, this.ripple = true, this.onClick, this.href});

  @override
  Element build() {
    var btn = ButtonElement();
    btn.classes.addAll([
      'mdl-button',
      'mdl-js-button',
      'mdl-button--fab',
      if(ripple) 'mdl-js-ripple-effect',
      'mdl-button--colored',
    ]);

    btn.attributes.addAll({'href': href});
    btn.addEventListener('click', onClick, /*captureClick*/ );

    if(child!=null){
      btn.children.add(child.build());
    }
    return btn;
  }


}