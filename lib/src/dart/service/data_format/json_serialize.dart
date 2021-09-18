import 'package:json_annotation/json_annotation.dart';

part 'json_serialize.g.dart';

enum UserRole {
  @JsonValue('R')
  Root,
  @JsonValue('U')
  User,
  @JsonValue('S')
  SuperUser,
  @JsonValue('')
  None,
}

@JsonSerializable()
class Person {
  Person(
    this.firstName,
    this.lastName,
    this.email,
    UserRole? role,
  ) : role = (role == null || role == UserRole.None) ? UserRole.User : role;

  @JsonKey(name: 'firstName', required: true, includeIfNull: true)
  final String firstName;
  @JsonKey(name: 'lastName', required: true, includeIfNull: true)
  final String lastName;
  @JsonKey(name: 'email', required: true, includeIfNull: true)
  final String email;
  @JsonKey(name: 'role', required: false, includeIfNull: true)
  final UserRole role;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
