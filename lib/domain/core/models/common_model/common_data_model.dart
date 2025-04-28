import 'package:freezed_annotation/freezed_annotation.dart';
part 'common_data_model.freezed.dart';
part 'common_data_model.g.dart';


@freezed
class CommonDataModel with _$CommonDataModel {
  const factory CommonDataModel({
    @JsonKey(name: "success")
    required bool success,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required dynamic data,
  }) = _CommonDataModel;

  factory CommonDataModel.fromJson(Map<String, dynamic> json) => _$CommonDataModelFromJson(json);
}