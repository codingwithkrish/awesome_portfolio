// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceInfoModelImpl _$$DeviceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceInfoModelImpl(
      deviceId: json['deviceId'] as String,
      deviceName: json['deviceName'] as String,
      deviceType: json['deviceType'] as String,
      ipAddress: json['ipAddress'] as String,
      screenSize: json['screenSize'] as String,
      os: DateTime.parse(json['os'] as String),
      timezone: DateTime.parse(json['timezone'] as String),
      language: json['language'] as String,
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$$DeviceInfoModelImplToJson(
        _$DeviceInfoModelImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'deviceType': instance.deviceType,
      'ipAddress': instance.ipAddress,
      'screenSize': instance.screenSize,
      'os': instance.os.toIso8601String(),
      'timezone': instance.timezone.toIso8601String(),
      'language': instance.language,
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
