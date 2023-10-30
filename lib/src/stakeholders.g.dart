// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stakeholders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stakeholders _$StakeholdersFromJson(Map<String, dynamic> json) => Stakeholders(
      fullName: json['full_name'] as String?,
      stakeholderType: json['stakeholder_type'] as String?,
      individualPrefix: json['individual_prefix'] as String?,
      individualFirstName: json['individual_first_name'] as String?,
      individualMiddleName: json['individual_middle_name'] as String?,
      individualLastName: json['individual_last_name'] as String?,
      individualSuffix: json['individual_suffix'] as String?,
      individualPreferredName: json['individual_preferred_name'] as String?,
      beginDate: json['begin_date'] as String?,
      endDate: json['end_date'] as String?,
      corporationCountry: json['corporation_country'] as String?,
      corporationStateOrProvince:
          json['corporation_state_or_province'] as String?,
      emailAddress: json['email_address'] as String?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$StakeholdersToJson(Stakeholders instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('full_name', instance.fullName);
  writeNotNull('stakeholder_type', instance.stakeholderType);
  writeNotNull('individual_prefix', instance.individualPrefix);
  writeNotNull('individual_first_name', instance.individualFirstName);
  writeNotNull('individual_middle_name', instance.individualMiddleName);
  writeNotNull('individual_last_name', instance.individualLastName);
  writeNotNull('individual_suffix', instance.individualSuffix);
  writeNotNull('individual_preferred_name', instance.individualPreferredName);
  writeNotNull('begin_date', instance.beginDate);
  writeNotNull('end_date', instance.endDate);
  writeNotNull('corporation_country', instance.corporationCountry);
  writeNotNull(
      'corporation_state_or_province', instance.corporationStateOrProvince);
  writeNotNull('email_address', instance.emailAddress);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
