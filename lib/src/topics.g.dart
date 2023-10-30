// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topics _$TopicsFromJson(Map<String, dynamic> json) => Topics(
      name: json['name'] as String,
      alias: json['alias'] as String,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$TopicsToJson(Topics instance) => <String, dynamic>{
      'name': instance.name,
      'alias': instance.alias,
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };
