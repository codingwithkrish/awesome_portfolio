// To parse this JSON data, do
//
//     final deviceInfoModel = deviceInfoModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'device_info_model.freezed.dart';
part 'device_info_model.g.dart';

DeviceInfoModel deviceInfoModelFromJson(String str) => DeviceInfoModel.fromJson(json.decode(str));

String deviceInfoModelToJson(DeviceInfoModel data) => json.encode(data.toJson());

@freezed
class DeviceInfoModel with _$DeviceInfoModel {
  const factory DeviceInfoModel({
    @JsonKey(name: "deviceId")
    required String deviceId,
    @JsonKey(name: "deviceName")
    required String deviceName,
    @JsonKey(name: "deviceType")
    required String deviceType,
    @JsonKey(name: "ipAddress")
    required String ipAddress,
    @JsonKey(name: "screenSize")
    required String screenSize,
    @JsonKey(name: "os")
    required DateTime os,
    @JsonKey(name: "timezone")
    required DateTime timezone,
    @JsonKey(name: "language")
    required String language,
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
    @JsonKey(name: "__v")
    required int v,
  }) = _DeviceInfoModel;

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) => _$DeviceInfoModelFromJson(json);
}
