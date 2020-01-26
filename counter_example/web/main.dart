import 'package:dart2html/dart2html.dart';

void main() {
  querySelector('#output').children.add(
        Theme(
          Column(
            children: [
              Center(
                child: Text(
                  '1',
                  id: 'count',
                ),
              ),
              Align.topRight(
                child: Button(
                    text: '+',
                    onClick: (e) {
                      print(e);
                      var count = int.tryParse($('#count').text);
                      $('#count').text = (count + 1).toString();
                    }),
              ),
            ],
          ),
        ).build(),
      );
}
