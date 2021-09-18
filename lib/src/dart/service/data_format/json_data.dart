import 'dart:convert';

Map<String, dynamic> data = {
  'name': 'Test',
  'count': 100,
  'valid': true,
  'list': [
    1,
    2,
    {
      'nested': 'a',
      'value': 123,
    },
  ],
};

class ToEncode {
  ToEncode(this.v1, this.v2);

  final String v1;
  final String v2;

  Object toJson() {
    return [v1, v2];
  }
}

void main() {
  print(data.runtimeType);

  String str = jsonEncode(data);
  print(str.runtimeType);
  print(str);

  Map<String, dynamic> obj = jsonDecode(str);
  print(obj.runtimeType);
  print(obj);
  print("obj[list][0][value] = ${obj['list'][2]['value']}");

  print(jsonEncode(ToEncode('v1', 'v2')).runtimeType);
  print(jsonEncode(ToEncode('v1', 'v2')));

  JsonEncoder jsonEncoder = JsonEncoder.withIndent('  ');
  String indentString = jsonEncoder.convert(data);
  print(indentString);
}
