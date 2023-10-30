import 'package:json_annotation/json_annotation.dart';
part 'collections.g.dart';

@JsonSerializable()
class Collections {
  Collections({
    required this.name,
    required this.alias,
    this.file,
    this.hymnalId,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Collections.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$CollectionsFromJson(json);
  }

  /// text
  @JsonKey(name: "name")
  String name;

  /// text
  @JsonKey(name: "alias")
  String alias;

  /// file
  @JsonKey(name: "file")
  String? file;

  /// relation
  @JsonKey(name: "hymnal_id")
  String? hymnalId;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "labe21wbqraqcjr";

  static const String $collectionName = "collections";

  Map<String, dynamic> toJson() {
    return _$CollectionsToJson(this);
  }
}
