import 'package:dart2html/dart2html.dart';
import 'package:http/http.dart' show get;

abstract class Framework {
  final String id;
  final String name;

  final List<String> scriptUrls;
  final List<String> cssUrls;
  final List<String> scripts;
  final List<String> css;

  Theme theme;

  Framework(
    this.id,
    this.name,
    this.scriptUrls,
    this.cssUrls,
    this.scripts,
    this.css,
  );

  void addStyles() async{
    var head = document.head;
    var style = StyleElement();
    style.type = 'text/css';

    var style_text = '';
    await Future.forEach<String>(cssUrls, (url) async{
      var response = await get(url);
      if(response.statusCode == HttpStatus.ok){
        style_text += response.body;
      }
      return '';
    });

    style.innerHtml = inspectStyles(style_text);
    head.append(style);
  }

  String inspectStyles(String style){
    return style;
  }

  void addScripts() async{
    var body = document.body;
    var script = ScriptElement();
    script.type = 'text/javascript';
    var script_text = '';
    await Future.forEach<String>(scriptUrls, (url) async{
      var response = await get(url);
      if(response.statusCode == HttpStatus.ok){
        script_text += response.body;
      }
      return '';
    });
    script.innerHtml = inspectScript(script_text);
    body.append(script);
  }

  String inspectScript(String script){
    return script;
  }

  void registerComponents();
}
