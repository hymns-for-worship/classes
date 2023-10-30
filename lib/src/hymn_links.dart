import 'package:json_annotation/json_annotation.dart';
part 'hymn_links.g.dart';

@JsonSerializable()
class HymnLinks {
  HymnLinks({
    this.name,
    this.description,
    required this.url,
    this.author,
    this.hymnId,
    this.categoryId,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory HymnLinks.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnLinksFromJson(json);
  }

  /// text
  @JsonKey(name: "name")
  String? name;

  /// text
  @JsonKey(name: "description")
  String? description;

  /// url
  @JsonKey(name: "url")
  String url;

  /// text
  @JsonKey(name: "author")
  String? author;

  /// relation
  @JsonKey(name: "hymn_id")
  String? hymnId;

  /// relation
  @JsonKey(name: "category_id")
  String? categoryId;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "evh1fhlgdg9rxs1";

  static const String $collectionName = "hymn_links";

  Map<String, dynamic> toJson() {
    return _$HymnLinksToJson(this);
  }
}
