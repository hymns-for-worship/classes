import 'package:json_annotation/json_annotation.dart';
part 'analytics_top_hymns.g.dart';

@JsonSerializable()
class AnalyticsTopHymns {
  AnalyticsTopHymns({
    this.hymnId,
    required this.number,
    required this.title,
    this.viewCount,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory AnalyticsTopHymns.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$AnalyticsTopHymnsFromJson(json);
  }

  /// json
  @JsonKey(name: "hymn_id")
  dynamic hymnId;

  /// text
  @JsonKey(name: "number")
  String number;

  /// text
  @JsonKey(name: "title")
  String title;

  /// json
  @JsonKey(name: "view_count")
  dynamic viewCount;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "2sbcf3p13a91cq1";

  static const String $collectionName = "analytics_top_hymns";

  Map<String, dynamic> toJson() {
    return _$AnalyticsTopHymnsToJson(this);
  }
}
