import 'dart:html' hide HtmlElement;

import 'package:dart2html/dart2html.dart';
import 'package:dart2html/src/styling/Theme.dart';


void main() {
  HtmlElement tree = Column(
    children: [
      Text('first'),
      Image('https://download.ir/wp-content/uploads/2019/09/header-1-3.jpg'),
      Text('second', textType: TextType.h1),
      Link(
        'https://download.ir/wp-content/uploads/2019/09/header-1-3.jpg',
        child: Text('img'),
      ),
      Text('third', textStyle: TextStyle(fontSize: '4em')),
      Container(
        child: TextBox(),
      ),
      TextField(name: 'rando'),
      Button(
        id: 'mybtn',
        text: '1',
        onClick: (e) {
          var e = querySelector('#mybtn');
          e.text = (int.tryParse(e.text) + 1).toString();
        }
      ),
      Row(
        children: [
          Column(
            children: [
              Code(
                  code: '''
        Button(
        id: 'mybtn',
        text: '1',
        onClick: (e) {
          var e = querySelector('#mybtn');
          e.text = (int.tryParse(e.text) + 1).toString();
        }
      )
        '''
              ),
            ],
          ),

          Column(
            children: [
              Code(
                  code: '''
        Button(
        id: 'mybtn',
        text: '1',
        onClick: (e) {
          var e = querySelector('#mybtn');
          e.text = (int.tryParse(e.text) + 1).toString();
        }
      )
        '''
              ),
            ],
          ),
        ],
      ),

    ],
  );

  tree = Theme(tree);

  var e = tree.build();

  querySelector('#output').children.add(e);
}
