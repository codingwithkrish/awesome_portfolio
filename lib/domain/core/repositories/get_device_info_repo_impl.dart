import 'package:awesome_portfolio/domain/core/models/common_model/common_data_model.dart';
import 'package:awesome_portfolio/infrastructure/network/api_endpoints.dart';
import 'package:dio/dio.dart';

import '../../services/basic_api_service.dart';
import '../interfaces/get_device_info_repo.dart';
import '../models/device_info_model/device_info_model.dart';

class GetDeviceInfoRepoImpl extends GetDeviceInfoRepo{
  final BasicApiService _basicApiService;
  GetDeviceInfoRepoImpl(this._basicApiService);
  @override
  Future<DeviceInfoModel?>? postDeviceInfo(String? deviceId, String? deviceName, String? deviceType, String? ipAddress, String? screenSize, String? os, String? timezone, String? language) async{
    // TODO: implement postDeviceInfo
    Response response = await _basicApiService.get(ApiEndpoints.deviceInfo);
    if(response.statusCode==200||response.statusCode==201){
      CommonDataModel commonDataModel = CommonDataModel.fromJson(response.data);
      if(commonDataModel.success){
        DeviceInfoModel deviceInfoModel =DeviceInfoModel.fromJson(commonDataModel.data);
        return deviceInfoModel;
      }
    }
    return null;
  }
  
}