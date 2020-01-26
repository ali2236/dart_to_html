class Css {

  final String css;

  Css(this.css);

  String get minified => css.replaceAll(RegExp('\\s+'), '');

}