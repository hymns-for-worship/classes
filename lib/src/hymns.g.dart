// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hymns _$HymnsFromJson(Map<String, dynamic> json) => Hymns(
      hymnalId: json['hymnal_id'] as String,
      title: json['title'] as String,
      number: json['number'] as String,
      status: $enumDecodeNullable(_$HymnsStatusEnumMap, json['status']),
      printSmall: (json['print_small'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      printLarge: (json['print_large'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      titleSlide: json['title_slide'] as String?,
      translatedTitle: json['translated_title'] as String?,
      tuneName: json['tune_name'] as String?,
      arrangement: json['arrangement'] as String?,
      copyright: json['copyright'] as String?,
      language: $enumDecodeNullable(_$HymnsLanguageEnumMap, json['language']),
      categoryId: json['category_id'] as String?,
      buyable: json['buyable'] as bool?,
      timeSignature: json['time_signature'] as String?,
      complexTime: json['complex_time'] as String?,
      keySignature: json['key_signature'] as String?,
      startingBeat: json['starting_beat'] as String?,
      beatPattern: json['beat_pattern'] as String?,
      startingPitch: $enumDecodeNullable(
          _$HymnsStartingPitchEnumMap, json['starting_pitch']),
      startingPitchDirection: $enumDecodeNullable(
          _$HymnsStartingPitchDirectionEnumMap,
          json['starting_pitch_direction']),
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnsToJson(Hymns instance) {
  final val = <String, dynamic>{
    'hymnal_id': instance.hymnalId,
    'title': instance.title,
    'number': instance.number,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$HymnsStatusEnumMap[instance.status]);
  writeNotNull('print_small', instance.printSmall);
  writeNotNull('print_large', instance.printLarge);
  writeNotNull('title_slide', instance.titleSlide);
  writeNotNull('translated_title', instance.translatedTitle);
  writeNotNull('tune_name', instance.tuneName);
  writeNotNull('arrangement', instance.arrangement);
  writeNotNull('copyright', instance.copyright);
  writeNotNull('language', _$HymnsLanguageEnumMap[instance.language]);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('buyable', instance.buyable);
  writeNotNull('time_signature', instance.timeSignature);
  writeNotNull('complex_time', instance.complexTime);
  writeNotNull('key_signature', instance.keySignature);
  writeNotNull('starting_beat', instance.startingBeat);
  writeNotNull('beat_pattern', instance.beatPattern);
  writeNotNull(
      'starting_pitch', _$HymnsStartingPitchEnumMap[instance.startingPitch]);
  writeNotNull('starting_pitch_direction',
      _$HymnsStartingPitchDirectionEnumMap[instance.startingPitchDirection]);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}

const _$HymnsStatusEnumMap = {
  HymnsStatus.$browsable: 'Browsable',
  HymnsStatus.$purchased: 'Purchased',
  HymnsStatus.$4MasterFile: '4-Master File',
  HymnsStatus.$hidden: 'Hidden',
};

const _$HymnsLanguageEnumMap = {
  HymnsLanguage.$uSEnglish: 'US English',
  HymnsLanguage.$spanish: 'Spanish',
};

const _$HymnsStartingPitchEnumMap = {
  HymnsStartingPitch.$do: 'DO',
  HymnsStartingPitch.$re: 'RE',
  HymnsStartingPitch.$mi: 'MI',
  HymnsStartingPitch.$fa: 'FA',
  HymnsStartingPitch.$sol: 'SOL',
  HymnsStartingPitch.$la: 'LA',
  HymnsStartingPitch.$ti: 'TI',
  HymnsStartingPitch.$si: 'SI',
};

const _$HymnsStartingPitchDirectionEnumMap = {
  HymnsStartingPitchDirection.$up: 'Up',
  HymnsStartingPitchDirection.$down: 'Down',
  HymnsStartingPitchDirection.$none: 'None',
};
