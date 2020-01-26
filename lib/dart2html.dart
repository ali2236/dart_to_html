library dart2html;

import 'dart:html' show querySelector, querySelectorAll;

export 'dart:html' hide Text, HtmlElement;

export 'src/elements/HtmlElement.dart';
export 'src/elements/Lists.dart';
export 'src/elements/Basic.dart';
export 'src/elements/Form.dart';
export 'src/elements/Audio.dart';
export 'src/elements/Tables.dart';
export 'src/elements/Flex.dart';
export 'src/elements/Other.dart';
export 'src/elements/Alignment.dart';
export 'src/styling/TextStyle.dart';
export 'src/styling/Theme.dart';

var $ = querySelector;
var $$ = querySelectorAll;