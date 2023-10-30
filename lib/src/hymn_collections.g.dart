// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnCollections _$HymnCollectionsFromJson(Map<String, dynamic> json) =>
    HymnCollections(
      title: json['title'] as String,
      number: json['number'] as String?,
      collectionId: json['collection_id'] as String,
      hymnId: json['hymn_id'] as String?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnCollectionsToJson(HymnCollections instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  val['collection_id'] = instance.collectionId;
  writeNotNull('hymn_id', instance.hymnId);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
