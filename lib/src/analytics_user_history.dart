import 'package:json_annotation/json_annotation.dart';
part 'analytics_user_history.g.dart';

@JsonSerializable()
class AnalyticsUserHistory {
  AnalyticsUserHistory({
    this.userHymn,
    required this.number,
    required this.title,
    this.userId,
    this.hymnId,
    this.viewCount,
    this.viewDate,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory AnalyticsUserHistory.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$AnalyticsUserHistoryFromJson(json);
  }

  /// json
  @JsonKey(name: "user_hymn")
  dynamic userHymn;

  /// text
  @JsonKey(name: "number")
  String number;

  /// text
  @JsonKey(name: "title")
  String title;

  /// relation
  @JsonKey(name: "user_id")
  String? userId;

  /// json
  @JsonKey(name: "hymn_id")
  dynamic hymnId;

  /// number
  @JsonKey(name: "view_count")
  num? viewCount;

  /// json
  @JsonKey(name: "view_date")
  dynamic viewDate;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "qhd1ffucwd0puzr";

  static const String $collectionName = "analytics_user_history";

  Map<String, dynamic> toJson() {
    return _$AnalyticsUserHistoryToJson(this);
  }
}
