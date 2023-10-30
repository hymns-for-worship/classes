// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_portions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnPortions _$HymnPortionsFromJson(Map<String, dynamic> json) => HymnPortions(
      portion: $enumDecode(_$HymnPortionsPortionEnumMap, json['portion']),
      lyrics: json['lyrics'] as String?,
      hymnId: json['hymn_id'] as String,
      optional: json['optional'] as bool?,
      slides:
          (json['slides'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnPortionsToJson(HymnPortions instance) {
  final val = <String, dynamic>{
    'portion': _$HymnPortionsPortionEnumMap[instance.portion]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lyrics', instance.lyrics);
  val['hymn_id'] = instance.hymnId;
  writeNotNull('optional', instance.optional);
  writeNotNull('slides', instance.slides);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}

const _$HymnPortionsPortionEnumMap = {
  HymnPortionsPortion.$verse1: 'Verse 1',
  HymnPortionsPortion.$verse2: 'Verse 2',
  HymnPortionsPortion.$verse3: 'Verse 3',
  HymnPortionsPortion.$verse4: 'Verse 4',
  HymnPortionsPortion.$verse5: 'Verse 5',
  HymnPortionsPortion.$verse6: 'Verse 6',
  HymnPortionsPortion.$verse7: 'Verse 7',
  HymnPortionsPortion.$verse9: 'Verse 9',
  HymnPortionsPortion.$round: 'Round',
  HymnPortionsPortion.$refrain: 'Refrain',
  HymnPortionsPortion.$chorus: 'Chorus',
  HymnPortionsPortion.$lastChorus: 'Last Chorus',
  HymnPortionsPortion.$sanctus: 'Sanctus',
  HymnPortionsPortion.$coda: 'Coda',
  HymnPortionsPortion.$amen: 'Amen',
};
