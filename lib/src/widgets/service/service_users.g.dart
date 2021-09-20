// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int?
    ..type = json['type'] as String?
    ..url = json['url'] as String?
    ..createdAt = _parseDate(json['created_at'] as String?)
    ..company = json['company'] as String?
    ..blogUrl = json['blog_url'] as String?
    ..avatarUrl = json['avatar_url'] as String?
    ..location = json['location'] as String?
    ..login = json['login'] as String?
    ..name = json['name'] as String?
    ..bio = json['bio'] as String?;
}
