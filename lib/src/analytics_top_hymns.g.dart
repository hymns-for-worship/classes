// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_top_hymns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsTopHymns _$AnalyticsTopHymnsFromJson(Map<String, dynamic> json) =>
    AnalyticsTopHymns(
      hymnId: json['hymn_id'],
      number: json['number'] as String,
      title: json['title'] as String,
      viewCount: json['view_count'],
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$AnalyticsTopHymnsToJson(AnalyticsTopHymns instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hymn_id', instance.hymnId);
  val['number'] = instance.number;
  val['title'] = instance.title;
  writeNotNull('view_count', instance.viewCount);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
