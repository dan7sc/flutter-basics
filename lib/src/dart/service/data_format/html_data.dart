import 'package:html/parser.dart';
import 'package:html/dom.dart';

void main() {
  Document htmlDocument = parse(htmlStr);
  var users = htmlDocument.getElementsByTagName('li').map((Element element) {
    return {
      'id': element.attributes['id'],
      'name': element.text,
    };
  });
  print(users);
}

String htmlStr = '''
<ul>
  <li id="001">John</li>
  <li id="002">Jane</li>
  <li id="003">Mary</li>
</ul>
''';
