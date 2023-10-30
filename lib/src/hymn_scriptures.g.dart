// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_scriptures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnScriptures _$HymnScripturesFromJson(Map<String, dynamic> json) =>
    HymnScriptures(
      reference: json['reference'] as String,
      hymnId: json['hymn_id'] as String,
      startIndex: json['start_index'] as num?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnScripturesToJson(HymnScriptures instance) {
  final val = <String, dynamic>{
    'reference': instance.reference,
    'hymn_id': instance.hymnId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start_index', instance.startIndex);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
