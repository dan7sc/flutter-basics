import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_users.g.dart';

DateFormat _dateFormat = DateFormat('yyyy-M-ddTHH:mm:ss');
DateTime? _parseDate(String? str) {
  if (str != null) {
    return _dateFormat.parse(str.replaceFirst(' UTC', ""), true);
  }
  return null;
}

@JsonSerializable(
  createToJson: false,
)
class User {
  User();

  int? id;
  String? type;
  String? url;
  @JsonKey(name: 'created_at', fromJson: _parseDate, includeIfNull: false)
  DateTime? createdAt;
  String? company;
  @JsonKey(name: 'blog_url')
  String? blogUrl;
  @JsonKey(name: 'avatar_url')
  String? avatarUrl;
  String? location;
  String? login;
  String? name;
  String? bio;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
