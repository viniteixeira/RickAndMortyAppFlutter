// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_transfer_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataTransferReceiveCharacter _$DataTransferReceiveCharacterFromJson(
    Map<String, dynamic> json) {
  return DataTransferReceiveCharacter(
    json['id'] as int?,
    json['name'] as String?,
    json['status'] as String?,
    json['species'] as String?,
    json['type'] as String?,
    json['gender'] as String?,
    json['image'] as String?,
    (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['url'] as String?,
    json['created'] as String?,
  )
    ..origin = json['origin'] == null
        ? null
        : DataTransferReceiveCharacterInfo.fromJson(
            json['origin'] as Map<String, dynamic>)
    ..location = json['location'] == null
        ? null
        : DataTransferReceiveCharacterInfo.fromJson(
            json['location'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DataTransferReceiveCharacterToJson(
        DataTransferReceiveCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
      'origin': instance.origin?.toJson(),
      'location': instance.location?.toJson(),
    };

DataTransferReceiveCharacterInfo _$DataTransferReceiveCharacterInfoFromJson(
    Map<String, dynamic> json) {
  return DataTransferReceiveCharacterInfo(
    json['name'] as String?,
    json['url'] as String?,
  );
}

Map<String, dynamic> _$DataTransferReceiveCharacterInfoToJson(
        DataTransferReceiveCharacterInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

DataTransferReceiveCharacterResult _$DataTransferReceiveCharacterResultFromJson(
    Map<String, dynamic> json) {
  return DataTransferReceiveCharacterResult(
    (json['results'] as List<dynamic>)
        .map((e) =>
            DataTransferReceiveCharacter.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DataTransferReceiveCharacterResultToJson(
        DataTransferReceiveCharacterResult instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
