import 'package:xml/xml.dart';

void main() {
  XmlDocument xmlDocument = XmlDocument.parse(xmlStr);
  XmlElement firstBook = xmlDocument.rootElement.findElements('book').first;
  String title = firstBook.findElements('title').single.text;
  String id = firstBook.attributes
      .firstWhere((XmlAttribute attr) => attr.name.local == 'id')
      .value;
  print('$id => $title');

  XmlBuilder xmlBuilder = XmlBuilder();
  xmlBuilder.processing('xml', 'version="1.0"');
  xmlBuilder.element(
    'note',
    attributes: {
      'id': '001',
    },
    nest: () {
      xmlBuilder.element('from', nest: () {
        xmlBuilder.text('Dorian');
      });
      xmlBuilder.element('to', nest: () {
        xmlBuilder.text('Jane');
      });
      xmlBuilder.element('message', nest: () {
        xmlBuilder
          ..text('Hello!')
          ..comment('message to send');
      });
    },
  );
  XmlNode xmlNode = xmlBuilder.buildDocument();
  print(xmlNode.toXmlString(pretty: true));
}


String xmlStr = '''
  <?xml version="1.0"?>
  <catalog>
    <book id="bk101">
    <author>Gambardella, Matthew</author>
    <title>XML Developer's Guide</title>
    <genre>Computer</genre>
    <price>44.95</price>
    <publish_date>2000-10-01</publish_date>
    <description>An in-depth look at creating applications with XML.</description>
    </book>
    <book id="bk102">
      <author>Ralls, Kim</author>
      <title>Midnight Rain</title>
      <genre>Fantasy</genre>
      <price>5.95</price>
      <publish_date>2000-12-16</publish_date>
      <description>A former architect battles corporate zombies, an evil sorceress, and her own childhood to become queen of the world.</description>
    </book>
  </catalog>
''';
