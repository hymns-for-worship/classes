// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnLinks _$HymnLinksFromJson(Map<String, dynamic> json) => HymnLinks(
      name: json['name'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String,
      author: json['author'] as String?,
      hymnId: json['hymn_id'] as String?,
      categoryId: json['category_id'] as String?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnLinksToJson(HymnLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  val['url'] = instance.url;
  writeNotNull('author', instance.author);
  writeNotNull('hymn_id', instance.hymnId);
  writeNotNull('category_id', instance.categoryId);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
