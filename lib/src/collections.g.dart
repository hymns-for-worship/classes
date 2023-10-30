// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Collections _$CollectionsFromJson(Map<String, dynamic> json) => Collections(
      name: json['name'] as String,
      alias: json['alias'] as String,
      file: json['file'] as String?,
      hymnalId: json['hymnal_id'] as String?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$CollectionsToJson(Collections instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'alias': instance.alias,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file', instance.file);
  writeNotNull('hymnal_id', instance.hymnalId);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
