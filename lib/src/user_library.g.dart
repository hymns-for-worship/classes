// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLibrary _$UserLibraryFromJson(Map<String, dynamic> json) => UserLibrary(
      hymnId: json['hymn_id'] as String?,
      stakeholderId: json['stakeholder_id'] as String?,
      topicId: json['topic_id'] as String?,
      playlistId: json['playlist_id'] as String?,
      user: json['user'] as String?,
      uid: json['uid'] as String?,
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$UserLibraryToJson(UserLibrary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hymn_id', instance.hymnId);
  writeNotNull('stakeholder_id', instance.stakeholderId);
  writeNotNull('topic_id', instance.topicId);
  writeNotNull('playlist_id', instance.playlistId);
  writeNotNull('user', instance.user);
  writeNotNull('uid', instance.uid);
  val['id'] = instance.id;
  val['created'] = instance.created.toIso8601String();
  val['updated'] = instance.updated.toIso8601String();
  return val;
}
