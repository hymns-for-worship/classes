import 'package:json_annotation/json_annotation.dart';
part 'user_library.g.dart';

@JsonSerializable()
class UserLibrary {
  UserLibrary({
    this.hymnId,
    this.stakeholderId,
    this.topicId,
    this.playlistId,
    this.user,
    this.uid,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory UserLibrary.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$UserLibraryFromJson(json);
  }

  /// relation
  @JsonKey(name: "hymn_id")
  String? hymnId;

  /// relation
  @JsonKey(name: "stakeholder_id")
  String? stakeholderId;

  /// relation
  @JsonKey(name: "topic_id")
  String? topicId;

  /// relation
  @JsonKey(name: "playlist_id")
  String? playlistId;

  /// relation
  @JsonKey(name: "user")
  String? user;

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

  static const String $collectionId = "z9s5td4rqysqrom";

  static const String $collectionName = "user_library";

  Map<String, dynamic> toJson() {
    return _$UserLibraryToJson(this);
  }
}
