// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonDataModelImpl _$$CommonDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommonDataModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$CommonDataModelImplToJson(
        _$CommonDataModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
