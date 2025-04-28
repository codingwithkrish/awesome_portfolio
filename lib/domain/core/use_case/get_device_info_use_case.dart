import '../models/device_info_model/device_info_model.dart';
import '../repositories/get_device_info_repo_impl.dart';

class GetDeviceInfoUseCase{
  final GetDeviceInfoRepoImpl _getDeviceInfoRepoImpl;
  GetDeviceInfoUseCase(this._getDeviceInfoRepoImpl);
  Future<DeviceInfoModel?>? execute(String? deviceId, String? deviceName, String? deviceType, String? ipAddress, String? screenSize, String? os, String? timezone, String? language)async{
    return await _getDeviceInfoRepoImpl.postDeviceInfo(deviceId, deviceName, deviceType, ipAddress, screenSize, os, timezone, language);
  }
}