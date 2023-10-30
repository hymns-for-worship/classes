import 'package:json_annotation/json_annotation.dart';
part 'playlists.g.dart';

@JsonSerializable()
class Playlists {
  Playlists({
    required this.name,
    this.description,
    this.user,
    this.deleted,
    this.public,
    this.event,
    this.uid,
    this.medly,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Playlists.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$PlaylistsFromJson(json);
  }

  /// text
  @JsonKey(name: "name")
  String name;

  /// editor
  @JsonKey(name: "description")
  String? description;

  /// relation
  @JsonKey(name: "user")
  String? user;

  /// bool
  @JsonKey(name: "deleted")
  bool? deleted;

  /// bool
  @JsonKey(name: "public")
  bool? public;

  /// date
  @JsonKey(name: "event")
  DateTime? event;

  /// text
  @JsonKey(name: "uid")
  String? uid;

  /// bool
  @JsonKey(name: "medly")
  bool? medly;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "czre3bh0ocfcwlc";

  static const String $collectionName = "playlists";

  Map<String, dynamic> toJson() {
    return _$PlaylistsToJson(this);
  }
}
