import 'package:json_annotation/json_annotation.dart';
part 'playlist_items.g.dart';

enum PlaylistItemsParts {
  @JsonValue("Title")
  $title,
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

extension PlaylistItemsPartsUtils on PlaylistItemsParts {
  String get description {
    switch (this) {
      case PlaylistItemsParts.$title:
        return "Title";
      case PlaylistItemsParts.$verse1:
        return "Verse 1";
      case PlaylistItemsParts.$verse2:
        return "Verse 2";
      case PlaylistItemsParts.$verse3:
        return "Verse 3";
      case PlaylistItemsParts.$verse4:
        return "Verse 4";
      case PlaylistItemsParts.$verse5:
        return "Verse 5";
      case PlaylistItemsParts.$verse6:
        return "Verse 6";
      case PlaylistItemsParts.$verse7:
        return "Verse 7";
      case PlaylistItemsParts.$verse9:
        return "Verse 9";
      case PlaylistItemsParts.$round:
        return "Round";
      case PlaylistItemsParts.$refrain:
        return "Refrain";
      case PlaylistItemsParts.$chorus:
        return "Chorus";
      case PlaylistItemsParts.$lastChorus:
        return "Last Chorus";
      case PlaylistItemsParts.$sanctus:
        return "Sanctus";
      case PlaylistItemsParts.$coda:
        return "Coda";
      case PlaylistItemsParts.$amen:
        return "Amen";
    }
  }
}

@JsonSerializable()
class PlaylistItems {
  PlaylistItems({
    this.user,
    this.hymnId,
    this.text,
    this.notes,
    required this.playlistId,
    this.order,
    this.deleted,
    this.image,
    this.color,
    this.uid,
    this.parts,
    required this.id,
    required this.created,
    required this.updated,
  });

  factory PlaylistItems.fromJson(Map<String, dynamic> json) {
    for (final key in json.keys) {
      if (json[key] == '') json[key] = null;
    }
    return _$PlaylistItemsFromJson(json);
  }

  /// relation
  @JsonKey(name: "user")
  String? user;

  /// relation
  @JsonKey(name: "hymn_id")
  String? hymnId;

  /// editor
  @JsonKey(name: "text")
  String? text;

  /// editor
  @JsonKey(name: "notes")
  String? notes;

  /// relation
  @JsonKey(name: "playlist_id")
  String playlistId;

  /// number
  @JsonKey(name: "order")
  num? order;

  /// bool
  @JsonKey(name: "deleted")
  bool? deleted;

  /// url
  @JsonKey(name: "image")
  String? image;

  /// text
  @JsonKey(name: "color")
  String? color;

  /// text
  @JsonKey(name: "uid")
  String? uid;

  /// select
  @JsonKey(name: "parts")
  List<PlaylistItemsParts>? parts;

  /// text
  @JsonKey(name: "id")
  String id;

  /// date
  @JsonKey(name: "created")
  DateTime created;

  /// date
  @JsonKey(name: "updated")
  DateTime updated;

  static const String $collectionId = "lua2dy2imipbmlo";

  static const String $collectionName = "playlist_items";

  Map<String, dynamic> toJson() {
    return _$PlaylistItemsToJson(this);
  }
}
