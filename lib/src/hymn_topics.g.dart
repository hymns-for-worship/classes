// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnTopics _$HymnTopicsFromJson(Map<String, dynamic> json) => HymnTopics(
      topicId: json['topic_id'] as String,
      hymnId: json['hymn_id'] as String,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnTopicsToJson(HymnTopics instance) =>
    <String, dynamic>{
      'topic_id': instance.topicId,
      'hymn_id': instance.hymnId,
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
