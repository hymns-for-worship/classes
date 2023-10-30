import 'package:json_annotation/json_annotation.dart';
part 'hymn_stakeholders.g.dart';

enum HymnStakeholdersRelationship {
  @JsonValue("Composer")
  $composer,
  @JsonValue("Lyricist")
  $lyricist,
  @JsonValue("Arranger")
  $arranger,
  @JsonValue("Copyright Holder")
  $copyrightHolder,
  @JsonValue("Owner")
  $owner,
  @JsonValue("Copyright Manager")
  $copyrightManager
}

extension HymnStakeholdersRelationshipUtils on HymnStakeholdersRelationship {
  String get description {
    switch (this) {
      case HymnStakeholdersRelationship.$composer:
        return "Composer";
      case HymnStakeholdersRelationship.$lyricist:
        return "Lyricist";
      case HymnStakeholdersRelationship.$arranger:
        return "Arranger";
      case HymnStakeholdersRelationship.$copyrightHolder:
        return "Copyright Holder";
      case HymnStakeholdersRelationship.$owner:
        return "Owner";
      case HymnStakeholdersRelationship.$copyrightManager:
        return "Copyright Manager";
    }
  }
}

@JsonSerializable()
class HymnStakeholders {
  HymnStakeholders({
    this.royalty,
    required this.stakeholderId,
    required this.hymnId,
    this.relationship,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory HymnStakeholders.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnStakeholdersFromJson(json);
  }

  /// number
  @JsonKey(name: "royalty")
  num? royalty;

  /// relation
  @JsonKey(name: "stakeholder_id")
  String stakeholderId;

  /// relation
  @JsonKey(name: "hymn_id")
  String hymnId;

  /// select
  @JsonKey(name: "relationship")
  HymnStakeholdersRelationship? relationship;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "k6z6jgoeztdxkq9";

  static const String $collectionName = "hymn_stakeholders";

  Map<String, dynamic> toJson() {
    return _$HymnStakeholdersToJson(this);
  }
}
