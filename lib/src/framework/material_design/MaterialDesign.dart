import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/framework/ComponentManager.dart';

class MaterialDesign extends Framework {
  MaterialDesign()
      : super(
          'mdl',
          'Material Design lite',
          ['https://code.getmdl.io/1.3.0/material.min.js'],
          [
            'https://fonts.googleapis.com/icon?family=Material+Icons',
            'https://code.getmdl.io/1.3.0/material.indigo-pink.min.css',
          ],
          [],
          [],
        );

  @override
  String inspectStyles(String style) {
    var defaultAccentColor = 'rgb(255,64,129)';
    if (theme.accentColor != null) {
      style = style.replaceAll(defaultAccentColor, theme.accentColor);
    }
    return super.inspectStyles(style);
  }

  @override
  void registerComponents() {
    var cm = ComponentManager();

    cm.setClasses<Fab>([
      'mdl-button',
      'mdl-js-button',
      'mdl-button--fab',
      'mdl-js-ripple-effect',
      'mdl-button--colored',
    ]);

    cm.setClasses<Button>([
      'mdl-button',
      'mdl-js-button',
      'mdl-button--raised',
      'mdl-js-ripple-effect',
      'mdl-button--colored',
    ]);
  }
}
