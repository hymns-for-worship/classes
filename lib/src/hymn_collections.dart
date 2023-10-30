import 'package:json_annotation/json_annotation.dart';
part 'hymn_collections.g.dart';

@JsonSerializable()
class HymnCollections {
  HymnCollections({
    required this.title,
    this.number,
    required this.collectionId,
    this.hymnId,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory HymnCollections.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnCollectionsFromJson(json);
  }

  /// text
  @JsonKey(name: "title")
  String title;

  /// text
  @JsonKey(name: "number")
  String? number;

  /// relation
  @JsonKey(name: "collection_id")
  String collectionId;

  /// relation
  @JsonKey(name: "hymn_id")
  String? hymnId;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "2mmfgy5s4mamfau";

  static const String $collectionName = "hymn_collections";

  Map<String, dynamic> toJson() {
    return _$HymnCollectionsToJson(this);
  }
}
