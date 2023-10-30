// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) => Playlists(
      name: json['name'] as String,
      description: json['description'] as String?,
      user: json['user'] as String?,
      deleted: json['deleted'] as bool?,
      public: json['public'] as bool?,
      event: json['event'] == null
          ? null
          : DateTime.parse(json['event'] as String),
      uid: json['uid'] as String?,
      medly: json['medly'] as bool?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$PlaylistsToJson(Playlists instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('user', instance.user);
  writeNotNull('deleted', instance.deleted);
  writeNotNull('public', instance.public);
  writeNotNull('event', instance.event?.toIso8601String());
  writeNotNull('uid', instance.uid);
  writeNotNull('medly', instance.medly);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
