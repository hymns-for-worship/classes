import 'package:json_annotation/json_annotation.dart';
part 'hymn_portions.g.dart';

enum HymnPortionsPortion {
  @JsonValue("Verse 1")
  $verse1,
  @JsonValue("Verse 2")
  $verse2,
  @JsonValue("Verse 3")
  $verse3,
  @JsonValue("Verse 4")
  $verse4,
  @JsonValue("Verse 5")
  $verse5,
  @JsonValue("Verse 6")
  $verse6,
  @JsonValue("Verse 7")
  $verse7,
  @JsonValue("Verse 9")
  $verse9,
  @JsonValue("Round")
  $round,
  @JsonValue("Refrain")
  $refrain,
  @JsonValue("Chorus")
  $chorus,
  @JsonValue("Last Chorus")
  $lastChorus,
  @JsonValue("Sanctus")
  $sanctus,
  @JsonValue("Coda")
  $coda,
  @JsonValue("Amen")
  $amen
}

extension HymnPortionsPortionUtils on HymnPortionsPortion {
  String get description {
    switch (this) {
      case HymnPortionsPortion.$verse1:
        return "Verse 1";
      case HymnPortionsPortion.$verse2:
        return "Verse 2";
      case HymnPortionsPortion.$verse3:
        return "Verse 3";
      case HymnPortionsPortion.$verse4:
        return "Verse 4";
      case HymnPortionsPortion.$verse5:
        return "Verse 5";
      case HymnPortionsPortion.$verse6:
        return "Verse 6";
      case HymnPortionsPortion.$verse7:
        return "Verse 7";
      case HymnPortionsPortion.$verse9:
        return "Verse 9";
      case HymnPortionsPortion.$round:
        return "Round";
      case HymnPortionsPortion.$refrain:
        return "Refrain";
      case HymnPortionsPortion.$chorus:
        return "Chorus";
      case HymnPortionsPortion.$lastChorus:
        return "Last Chorus";
      case HymnPortionsPortion.$sanctus:
        return "Sanctus";
      case HymnPortionsPortion.$coda:
        return "Coda";
      case HymnPortionsPortion.$amen:
        return "Amen";
    }
  }
}

@JsonSerializable()
class HymnPortions {
  HymnPortions({
    required this.portion,
    this.lyrics,
    required this.hymnId,
    this.optional,
    this.slides,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory HymnPortions.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnPortionsFromJson(json);
  }

  /// select
  @JsonKey(name: "portion")
  HymnPortionsPortion portion;

  /// editor
  @JsonKey(name: "lyrics")
  String? lyrics;

  /// relation
  @JsonKey(name: "hymn_id")
  String hymnId;

  /// bool
  @JsonKey(name: "optional")
  bool? optional;

  /// file
  @JsonKey(name: "slides")
  List<String>? slides;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "b1e9ymubh8ne1y8";

  static const String $collectionName = "hymn_portions";

  Map<String, dynamic> toJson() {
    return _$HymnPortionsToJson(this);
  }
}
