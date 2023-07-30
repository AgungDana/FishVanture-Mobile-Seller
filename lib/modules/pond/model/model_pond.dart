import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:seller/common/file_picker/model_upload_file.dart';
import 'package:seller/modules/pool/model/model_pool.dart';

class PondModel {
  final String name;
  final String countryID;
  final String provinceID;
  final String cityID;
  final String districtID;
  final String detailAddress;
  final String noteAddress;
  final String type;
  final String url;
  final double latitude;
  final double longitude;
  final String teamID;
  final String image;
  final List<PoolModel>? listPool;
  final List<FileModel>? berkas;
  PondModel({
    required this.name,
    required this.countryID,
    required this.provinceID,
    required this.cityID,
    required this.districtID,
    required this.detailAddress,
    required this.noteAddress,
    required this.type,
    required this.url,
    required this.latitude,
    required this.longitude,
    required this.teamID,
    required this.image,
    this.listPool,
    this.berkas,
  });

  PondModel copyWith({
    String? name,
    String? countryID,
    String? provinceID,
    String? cityID,
    String? districtID,
    String? detailAddress,
    String? noteAddress,
    String? type,
    String? url,
    double? latitude,
    double? longitude,
    String? teamID,
    String? image,
    List<PoolModel>? listPool,
    List<FileModel>? berkas,
  }) {
    return PondModel(
      name: name ?? this.name,
      countryID: countryID ?? this.countryID,
      provinceID: provinceID ?? this.provinceID,
      cityID: cityID ?? this.cityID,
      districtID: districtID ?? this.districtID,
      detailAddress: detailAddress ?? this.detailAddress,
      noteAddress: noteAddress ?? this.noteAddress,
      type: type ?? this.type,
      url: url ?? this.url,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      teamID: teamID ?? this.teamID,
      image: image ?? this.image,
      listPool: listPool ?? this.listPool,
      berkas: berkas ?? this.berkas,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'countryID': countryID,
      'provinceID': provinceID,
      'cityID': cityID,
      'districtID': districtID,
      'detailAddress': detailAddress,
      'noteAddress': noteAddress,
      'type': type,
      'url': url,
      'latitude': latitude,
      'longitude': longitude,
      'teamID': teamID,
      'image': image,
      'listPool': listPool?.map((x) => x.toMap()).toList(),
      'berkas': berkas?.map((x) => x.toMap()).toList(),
    };
  }

  factory PondModel.fromMap(Map<String, dynamic> map) {
    return PondModel(
      name: map['name'] ?? '',
      countryID: map['countryID'] ?? '',
      provinceID: map['provinceID'] ?? '',
      cityID: map['cityID'] ?? '',
      districtID: map['districtID'] ?? '',
      detailAddress: map['detailAddress'] ?? '',
      noteAddress: map['noteAddress'] ?? '',
      type: map['type'] ?? '',
      url: map['url'] ?? '',
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      teamID: map['teamID'] ?? '',
      image: map['image'] ?? '',
      listPool: map['listPool'] != null
          ? List<PoolModel>.from(
              map['listPool']?.map((x) => PoolModel.fromMap(x)))
          : null,
      berkas: map['berkas'] != null
          ? List<FileModel>.from(
              map['berkas']?.map((x) => FileModel.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PondModel.fromJson(String source) =>
      PondModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PondModel(name: $name, countryID: $countryID, provinceID: $provinceID, cityID: $cityID, districtID: $districtID, detailAddress: $detailAddress, noteAddress: $noteAddress, type: $type, url: $url, latitude: $latitude, longitude: $longitude, teamID: $teamID, image: $image, listPool: $listPool, berkas: $berkas)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PondModel &&
        other.name == name &&
        other.countryID == countryID &&
        other.provinceID == provinceID &&
        other.cityID == cityID &&
        other.districtID == districtID &&
        other.detailAddress == detailAddress &&
        other.noteAddress == noteAddress &&
        other.type == type &&
        other.url == url &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.teamID == teamID &&
        other.image == image &&
        listEquals(other.listPool, listPool) &&
        listEquals(other.berkas, berkas);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        countryID.hashCode ^
        provinceID.hashCode ^
        cityID.hashCode ^
        districtID.hashCode ^
        detailAddress.hashCode ^
        noteAddress.hashCode ^
        type.hashCode ^
        url.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        teamID.hashCode ^
        image.hashCode ^
        listPool.hashCode ^
        berkas.hashCode;
  }
}
