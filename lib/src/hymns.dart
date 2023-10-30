import 'package:json_annotation/json_annotation.dart';
part 'hymns.g.dart';

enum HymnsStatus {
  @JsonValue("Browsable")
  $browsable,
  @JsonValue("Purchased")
  $purchased,
  @JsonValue("4-Master File")
  $4MasterFile,
  @JsonValue("Hidden")
  $hidden
}

extension HymnsStatusUtils on HymnsStatus {
  String get description {
    switch (this) {
      case HymnsStatus.$browsable:
        return "Browsable";
      case HymnsStatus.$purchased:
        return "Purchased";
      case HymnsStatus.$4MasterFile:
        return "4-Master File";
      case HymnsStatus.$hidden:
        return "Hidden";
    }
  }
}

enum HymnsLanguage {
  @JsonValue("US English")
  $uSEnglish,
  @JsonValue("Spanish")
  $spanish
}

extension HymnsLanguageUtils on HymnsLanguage {
  String get description {
    switch (this) {
      case HymnsLanguage.$uSEnglish:
        return "US English";
      case HymnsLanguage.$spanish:
        return "Spanish";
    }
  }
}

enum HymnsStartingPitch {
  @JsonValue("DO")
  $do,
  @JsonValue("RE")
  $re,
  @JsonValue("MI")
  $mi,
  @JsonValue("FA")
  $fa,
  @JsonValue("SOL")
  $sol,
  @JsonValue("LA")
  $la,
  @JsonValue("TI")
  $ti,
  @JsonValue("SI")
  $si
}

extension HymnsStartingPitchUtils on HymnsStartingPitch {
  String get description {
    switch (this) {
      case HymnsStartingPitch.$do:
        return "DO";
      case HymnsStartingPitch.$re:
        return "RE";
      case HymnsStartingPitch.$mi:
        return "MI";
      case HymnsStartingPitch.$fa:
        return "FA";
      case HymnsStartingPitch.$sol:
        return "SOL";
      case HymnsStartingPitch.$la:
        return "LA";
      case HymnsStartingPitch.$ti:
        return "TI";
      case HymnsStartingPitch.$si:
        return "SI";
    }
  }
}

enum HymnsStartingPitchDirection {
  @JsonValue("Up")
  $up,
  @JsonValue("Down")
  $down,
  @JsonValue("None")
  $none
}

extension HymnsStartingPitchDirectionUtils on HymnsStartingPitchDirection {
  String get description {
    switch (this) {
      case HymnsStartingPitchDirection.$up:
        return "Up";
      case HymnsStartingPitchDirection.$down:
        return "Down";
      case HymnsStartingPitchDirection.$none:
        return "None";
    }
  }
}

@JsonSerializable()
class Hymns {
  Hymns({
    required this.hymnalId,
    required this.title,
    required this.number,
    this.status,
    this.printSmall,
    this.printLarge,
    this.titleSlide,
    this.translatedTitle,
    this.tuneName,
    this.arrangement,
    this.copyright,
    this.language,
    this.categoryId,
    this.buyable,
    this.timeSignature,
    this.complexTime,
    this.keySignature,
    this.startingBeat,
    this.beatPattern,
    this.startingPitch,
    this.startingPitchDirection,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory Hymns.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$HymnsFromJson(json);
  }

  /// relation
  @JsonKey(name: "hymnal_id")
  String hymnalId;

  /// text
  @JsonKey(name: "title")
  String title;

  /// text
  @JsonKey(name: "number")
  String number;

  /// select
  @JsonKey(name: "status")
  HymnsStatus? status;

  /// file
  @JsonKey(name: "print_small")
  List<String>? printSmall;

  /// file
  @JsonKey(name: "print_large")
  List<String>? printLarge;

  /// file
  @JsonKey(name: "title_slide")
  String? titleSlide;

  /// text
  @JsonKey(name: "translated_title")
  String? translatedTitle;

  /// text
  @JsonKey(name: "tune_name")
  String? tuneName;

  /// text
  @JsonKey(name: "arrangement")
  String? arrangement;

  /// text
  @JsonKey(name: "copyright")
  String? copyright;

  /// select
  @JsonKey(name: "language")
  HymnsLanguage? language;

  /// relation
  @JsonKey(name: "category_id")
  String? categoryId;

  /// bool
  @JsonKey(name: "buyable")
  bool? buyable;

  /// text
  @JsonKey(name: "time_signature")
  String? timeSignature;

  /// text
  @JsonKey(name: "complex_time")
  String? complexTime;

  /// text
  @JsonKey(name: "key_signature")
  String? keySignature;

  /// text
  @JsonKey(name: "starting_beat")
  String? startingBeat;

  /// text
  @JsonKey(name: "beat_pattern")
  String? beatPattern;

  /// select
  @JsonKey(name: "starting_pitch")
  HymnsStartingPitch? startingPitch;

  /// select
  @JsonKey(name: "starting_pitch_direction")
  HymnsStartingPitchDirection? startingPitchDirection;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "3e8uhxbipk7f8jc";

  static const String $collectionName = "hymns";

  Map<String, dynamic> toJson() {
    return _$HymnsToJson(this);
  }
}
