import 'package:dart2html/dart2html.dart';

class MaterialIcon extends HtmlElement{

  final String iconName;

  MaterialIcon(this.iconName);

  @override
  Element build() {
    var i = Element.tag('i');
    i.classes.add('material-icons');
    i.text = iconName;
    return i;
  }

}