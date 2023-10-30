import 'package:json_annotation/json_annotation.dart';
part 'topics.g.dart';

@JsonSerializable()
class Topics {
  Topics({
    required this.name,
    required this.alias,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Topics.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$TopicsFromJson(json);
  }

  /// text
  @JsonKey(name: "name")
  String name;

  /// text
  @JsonKey(name: "alias")
  String alias;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "txdrro81e1llb7x";

  static const String $collectionName = "topics";

  Map<String, dynamic> toJson() {
    return _$TopicsToJson(this);
  }
}
