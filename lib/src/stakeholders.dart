import 'package:json_annotation/json_annotation.dart';
part 'stakeholders.g.dart';

@JsonSerializable()
class Stakeholders {
  Stakeholders({
    this.fullName,
    this.stakeholderType,
    this.individualPrefix,
    this.individualFirstName,
    this.individualMiddleName,
    this.individualLastName,
    this.individualSuffix,
    this.individualPreferredName,
    this.beginDate,
    this.endDate,
    this.corporationCountry,
    this.corporationStateOrProvince,
    this.emailAddress,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Stakeholders.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$StakeholdersFromJson(json);
  }

  /// text
  @JsonKey(name: "full_name")
  String? fullName;

  /// text
  @JsonKey(name: "stakeholder_type")
  String? stakeholderType;

  /// text
  @JsonKey(name: "individual_prefix")
  String? individualPrefix;

  /// text
  @JsonKey(name: "individual_first_name")
  String? individualFirstName;

  /// text
  @JsonKey(name: "individual_middle_name")
  String? individualMiddleName;

  /// text
  @JsonKey(name: "individual_last_name")
  String? individualLastName;

  /// text
  @JsonKey(name: "individual_suffix")
  String? individualSuffix;

  /// text
  @JsonKey(name: "individual_preferred_name")
  String? individualPreferredName;

  /// text
  @JsonKey(name: "begin_date")
  String? beginDate;

  /// text
  @JsonKey(name: "end_date")
  String? endDate;

  /// text
  @JsonKey(name: "corporation_country")
  String? corporationCountry;

  /// text
  @JsonKey(name: "corporation_state_or_province")
  String? corporationStateOrProvince;

  /// email
  @JsonKey(name: "email_address")
  String? emailAddress;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "d62cmvs16wkqp17";

  static const String $collectionName = "stakeholders";

  Map<String, dynamic> toJson() {
    return _$StakeholdersToJson(this);
  }
}
