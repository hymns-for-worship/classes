// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_user_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsUserHistory _$AnalyticsUserHistoryFromJson(
        Map<String, dynamic> json) =>
    AnalyticsUserHistory(
      userHymn: json['user_hymn'],
      number: json['number'] as String,
      title: json['title'] as String,
      userId: json['user_id'] as String?,
      hymnId: json['hymn_id'],
      viewCount: json['view_count'] as num?,
      viewDate: json['view_date'],
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$AnalyticsUserHistoryToJson(
    AnalyticsUserHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_hymn', instance.userHymn);
  val['number'] = instance.number;
  val['title'] = instance.title;
  writeNotNull('user_id', instance.userId);
  writeNotNull('hymn_id', instance.hymnId);
  writeNotNull('view_count', instance.viewCount);
  writeNotNull('view_date', instance.viewDate);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
