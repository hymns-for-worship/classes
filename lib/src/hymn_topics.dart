import 'package:json_annotation/json_annotation.dart';
part 'hymn_topics.g.dart';

@JsonSerializable()
class HymnTopics {
  HymnTopics({
    required this.topicId,
    required this.hymnId,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory HymnTopics.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnTopicsFromJson(json);
  }

  /// relation
  @JsonKey(name: "topic_id")
  String topicId;

  /// relation
  @JsonKey(name: "hymn_id")
  String hymnId;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "arllugusl27lm1v";

  static const String $collectionName = "hymn_topics";

  Map<String, dynamic> toJson() {
    return _$HymnTopicsToJson(this);
  }
}
