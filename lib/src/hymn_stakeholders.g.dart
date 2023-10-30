// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_stakeholders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnStakeholders _$HymnStakeholdersFromJson(Map<String, dynamic> json) =>
    HymnStakeholders(
      royalty: json['royalty'] as num?,
      stakeholderId: json['stakeholder_id'] as String,
      hymnId: json['hymn_id'] as String,
      relationship: $enumDecodeNullable(
          _$HymnStakeholdersRelationshipEnumMap, json['relationship']),
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$HymnStakeholdersToJson(HymnStakeholders instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('royalty', instance.royalty);
  val['stakeholder_id'] = instance.stakeholderId;
  val['hymn_id'] = instance.hymnId;
  writeNotNull('relationship',
      _$HymnStakeholdersRelationshipEnumMap[instance.relationship]);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}

const _$HymnStakeholdersRelationshipEnumMap = {
  HymnStakeholdersRelationship.$composer: 'Composer',
  HymnStakeholdersRelationship.$lyricist: 'Lyricist',
  HymnStakeholdersRelationship.$arranger: 'Arranger',
  HymnStakeholdersRelationship.$copyrightHolder: 'Copyright Holder',
  HymnStakeholdersRelationship.$owner: 'Owner',
  HymnStakeholdersRelationship.$copyrightManager: 'Copyright Manager',
};
