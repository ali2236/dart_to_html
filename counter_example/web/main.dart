import 'package:dart2html/dart2html.dart';

void main() {
  querySelector('#output').children.add(
        Theme(
          accentColor: Colors.deepOrangeAccent.toString(),
          child: Scaffold(
            child: Column(
              children: [
                Center(
                  child: Text(
                    '1',
                    textType: TextType.h2,
                    id: 'count',
                  ),
                ),
                Align.bottomRight(
                  child: Padding.all(
                    padding: 2.0,
                    child: Fab(
                        child: MaterialIcon('add'),
                        onClick: (e) {
                          var count = int.tryParse($('#count').text);
                          $('#count').text = (count + 1).toString();
                        }),
                  ),
                ),
              ],
            ),
          ),
        ).build(),
      );
}
