// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommonDataModel _$CommonDataModelFromJson(Map<String, dynamic> json) {
  return _CommonDataModel.fromJson(json);
}

/// @nodoc
mixin _$CommonDataModel {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  dynamic get data => throw _privateConstructorUsedError;

  /// Serializes this CommonDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonDataModelCopyWith<CommonDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonDataModelCopyWith<$Res> {
  factory $CommonDataModelCopyWith(
          CommonDataModel value, $Res Function(CommonDataModel) then) =
      _$CommonDataModelCopyWithImpl<$Res, CommonDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class _$CommonDataModelCopyWithImpl<$Res, $Val extends CommonDataModel>
    implements $CommonDataModelCopyWith<$Res> {
  _$CommonDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonDataModelImplCopyWith<$Res>
    implements $CommonDataModelCopyWith<$Res> {
  factory _$$CommonDataModelImplCopyWith(_$CommonDataModelImpl value,
          $Res Function(_$CommonDataModelImpl) then) =
      __$$CommonDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class __$$CommonDataModelImplCopyWithImpl<$Res>
    extends _$CommonDataModelCopyWithImpl<$Res, _$CommonDataModelImpl>
    implements _$$CommonDataModelImplCopyWith<$Res> {
  __$$CommonDataModelImplCopyWithImpl(
      _$CommonDataModelImpl _value, $Res Function(_$CommonDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$CommonDataModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommonDataModelImpl implements _CommonDataModel {
  const _$CommonDataModelImpl(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$CommonDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonDataModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final dynamic data;

  @override
  String toString() {
    return 'CommonDataModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonDataModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, const DeepCollectionEquality().hash(data));

  /// Create a copy of CommonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonDataModelImplCopyWith<_$CommonDataModelImpl> get copyWith =>
      __$$CommonDataModelImplCopyWithImpl<_$CommonDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonDataModelImplToJson(
      this,
    );
  }
}

abstract class _CommonDataModel implements CommonDataModel {
  const factory _CommonDataModel(
          {@JsonKey(name: "success") required final bool success,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final dynamic data}) =
      _$CommonDataModelImpl;

  factory _CommonDataModel.fromJson(Map<String, dynamic> json) =
      _$CommonDataModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  dynamic get data;

  /// Create a copy of CommonDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonDataModelImplCopyWith<_$CommonDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
