import 'package:dart2html/dart2html.dart';

///
/// Singleton
///
class ComponentManager {

  ComponentManager._();
  static final _instance = ComponentManager._();
  factory ComponentManager() => _instance;

  final Map<Type, List<String>> _classes = {};

  void setClasses<T extends HtmlElement>(List<String> classes){
    _classes[T] = classes;
  }

  List<String> getClasses<T extends HtmlElement>(){
    if(_classes.containsKey(T)) {
      return _classes[T];
    } else {
      return const <String>[];
    }
  }
}