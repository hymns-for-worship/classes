import 'package:json_annotation/json_annotation.dart';
part 'users.g.dart';

@JsonSerializable()
class Users {
  Users({
    this.name,
    this.avatar,
    this.uid,
    required this.id,
    required this.created,
    required this.updated,
    required this.email,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$UsersFromJson(json);
  }

  /// text
  @JsonKey(name: "name")
  String? name;

  /// file
  @JsonKey(name: "avatar")
  String? avatar;

  /// text
  @JsonKey(name: "uid")
  String? uid;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  /// text
  @JsonKey(name: "email")
  String email;

  static const String $collectionId = "_pb_users_auth_";

  static const String $collectionName = "users";

  Map<String, dynamic> toJson() {
    return _$UsersToJson(this);
  }
}
