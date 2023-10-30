// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymnals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hymnals _$HymnalsFromJson(Map<String, dynamic> json) => Hymnals(
      ownerId: json['owner_id'] as num?,
      name: json['name'] as String,
      alias: json['alias'] as String,
      isbn: json['isbn'] as String?,
      status: $enumDecode(_$HymnalsStatusEnumMap, json['status']),
      listOrder: json['list_order'] as num?,
      hasStandard: json['has_standard'] as bool?,
      hasWidescreen: json['has_widescreen'] as bool?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnalsToJson(Hymnals instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('owner_id', instance.ownerId);
  val['name'] = instance.name;
  val['alias'] = instance.alias;
  writeNotNull('isbn', instance.isbn);
  val['status'] = _$HymnalsStatusEnumMap[instance.status]!;
  writeNotNull('list_order', instance.listOrder);
  writeNotNull('has_standard', instance.hasStandard);
  writeNotNull('has_widescreen', instance.hasWidescreen);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}

const _$HymnalsStatusEnumMap = {
  HymnalsStatus.$purchased: 'Purchased',
  HymnalsStatus.$browsable: 'Browsable',
  HymnalsStatus.$dead: 'Dead',
};
