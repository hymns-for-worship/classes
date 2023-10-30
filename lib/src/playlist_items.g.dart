// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaylistItems _$PlaylistItemsFromJson(Map<String, dynamic> json) =>
    PlaylistItems(
      user: json['user'] as String?,
      hymnId: json['hymn_id'] as String?,
      text: json['text'] as String?,
      notes: json['notes'] as String?,
      playlistId: json['playlist_id'] as String,
      order: json['order'] as num?,
      deleted: json['deleted'] as bool?,
      image: json['image'] as String?,
      color: json['color'] as String?,
      uid: json['uid'] as String?,
      parts: (json['parts'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PlaylistItemsPartsEnumMap, e))
          .toList(),
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$PlaylistItemsToJson(PlaylistItems instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user);
  writeNotNull('hymn_id', instance.hymnId);
  writeNotNull('text', instance.text);
  writeNotNull('notes', instance.notes);
  val['playlist_id'] = instance.playlistId;
  writeNotNull('order', instance.order);
  writeNotNull('deleted', instance.deleted);
  writeNotNull('image', instance.image);
  writeNotNull('color', instance.color);
  writeNotNull('uid', instance.uid);
  writeNotNull('parts',
      instance.parts?.map((e) => _$PlaylistItemsPartsEnumMap[e]!).toList());
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}

const _$PlaylistItemsPartsEnumMap = {
  PlaylistItemsParts.$title: 'Title',
  PlaylistItemsParts.$verse1: 'Verse 1',
  PlaylistItemsParts.$verse2: 'Verse 2',
  PlaylistItemsParts.$verse3: 'Verse 3',
  PlaylistItemsParts.$verse4: 'Verse 4',
  PlaylistItemsParts.$verse5: 'Verse 5',
  PlaylistItemsParts.$verse6: 'Verse 6',
  PlaylistItemsParts.$verse7: 'Verse 7',
  PlaylistItemsParts.$verse9: 'Verse 9',
  PlaylistItemsParts.$round: 'Round',
  PlaylistItemsParts.$refrain: 'Refrain',
  PlaylistItemsParts.$chorus: 'Chorus',
  PlaylistItemsParts.$lastChorus: 'Last Chorus',
  PlaylistItemsParts.$sanctus: 'Sanctus',
  PlaylistItemsParts.$coda: 'Coda',
  PlaylistItemsParts.$amen: 'Amen',
};
