import 'package:json_annotation/json_annotation.dart';
part 'hymnals.g.dart';

enum HymnalsStatus {
  @JsonValue("Purchased")
  $purchased,
  @JsonValue("Browsable")
  $browsable,
  @JsonValue("Dead")
  $dead
}

extension HymnalsStatusUtils on HymnalsStatus {
  String get description {
    switch (this) {
      case HymnalsStatus.$purchased:
        return "Purchased";
      case HymnalsStatus.$browsable:
        return "Browsable";
      case HymnalsStatus.$dead:
        return "Dead";
    }
  }
}

@JsonSerializable()
class Hymnals {
  Hymnals({
    this.ownerId,
    required this.name,
    required this.alias,
    this.isbn,
    required this.status,
    this.listOrder,
    this.hasStandard,
    this.hasWidescreen,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Hymnals.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnalsFromJson(json);
  }

  /// number
  @JsonKey(name: "owner_id")
  num? ownerId;

  /// text
  @JsonKey(name: "name")
  String name;

  /// text
  @JsonKey(name: "alias")
  String alias;

  /// text
  @JsonKey(name: "isbn")
  String? isbn;

  /// select
  @JsonKey(name: "status")
  HymnalsStatus status;

  /// number
  @JsonKey(name: "list_order")
  num? listOrder;

  /// bool
  @JsonKey(name: "has_standard")
  bool? hasStandard;

  /// bool
  @JsonKey(name: "has_widescreen")
  bool? hasWidescreen;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "zhesd8yp9kazduq";

  static const String $collectionName = "hymnals";

  Map<String, dynamic> toJson() {
    return _$HymnalsToJson(this);
  }
}
