import 'package:flutter_basics/src/dart/service/data_format/json_serialize.dart';

Map<String, dynamic> jsonData = {
  'firstName': 'Dorian',
  'lastName': 'Gray',
  'email': 'gray@example.com',
  'role': '',
};

void main() {
  Person person = Person.fromJson(jsonData);

  print('${person.firstName} ${person.lastName} has email ${person.email}');
  print(person.toJson());
}
