// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_serialize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['firstName', 'lastName', 'email']);
  return Person(
    json['firstName'] as String,
    json['lastName'] as String,
    json['email'] as String,
    _$enumDecodeNullable(_$UserRoleEnumMap, json['role']),
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$UserRoleEnumMap = {
  UserRole.Root: 'R',
  UserRole.User: 'U',
  UserRole.SuperUser: 'S',
  UserRole.None: '',
};
