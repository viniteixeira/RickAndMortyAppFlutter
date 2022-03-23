import 'package:json_annotation/json_annotation.dart';

part 'data_transfer_character.g.dart';

@JsonSerializable(explicitToJson: true)
class DataTransferReceiveCharacter {
  DataTransferReceiveCharacter(this.id, this.name, this.status, this.species,
      this.type, this.gender, this.image, this.episode, this.url, this.created);

  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;
  List<String>? episode;
  String? url;
  String? created;
  DataTransferReceiveCharacterInfo? origin;
  DataTransferReceiveCharacterInfo? location;

  factory DataTransferReceiveCharacter.fromJson(Map<String, dynamic> json) =>
      _$DataTransferReceiveCharacterFromJson(json);

  Map<String, dynamic> toJson() => _$DataTransferReceiveCharacterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataTransferReceiveCharacterInfo {
  DataTransferReceiveCharacterInfo(this.name, this.url);

  String? name;
  String? url;

  factory DataTransferReceiveCharacterInfo.fromJson(
          Map<String, dynamic> json) =>
      _$DataTransferReceiveCharacterInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DataTransferReceiveCharacterInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataTransferReceiveCharacterResult {
  DataTransferReceiveCharacterResult(this.results);

  List<DataTransferReceiveCharacter> results;

  factory DataTransferReceiveCharacterResult.fromJson(
          Map<String, dynamic> json) =>
      _$DataTransferReceiveCharacterResultFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DataTransferReceiveCharacterResultToJson(this);
}
