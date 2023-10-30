import 'package:json_annotation/json_annotation.dart';
part 'hymn_scriptures.g.dart';

@JsonSerializable()
class HymnScriptures {
  HymnScriptures({
    required this.reference,
    required this.hymnId,
    this.startIndex,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory HymnScriptures.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnScripturesFromJson(json);
  }

  /// text
  @JsonKey(name: "reference")
  String reference;

  /// relation
  @JsonKey(name: "hymn_id")
  String hymnId;

  /// number
  @JsonKey(name: "start_index")
  num? startIndex;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "f7e01mpzzqlbhmk";

  static const String $collectionName = "hymn_scriptures";

  Map<String, dynamic> toJson() {
    return _$HymnScripturesToJson(this);
  }
}
