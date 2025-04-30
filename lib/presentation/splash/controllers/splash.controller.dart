import 'package:awesome_portfolio/domain/services/device_info_service.dart';
import 'package:get/get.dart';

import '../../../domain/core/models/device_info_model/device_info_model.dart';
import '../../../domain/core/use_case/get_device_info_use_case.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final GetDeviceInfoUseCase _deviceInfoUseCase;
  SplashController(this._deviceInfoUseCase);

  final count = 0.obs;
  @override
  void onInit() {
    checkDevices();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  checkDevices()async{
    Map<String, dynamic> data =await DeviceInfoService.getDeviceDetails(Get.context!);
    Future<DeviceInfoModel?>? deviceInfoModel =  _deviceInfoUseCase.execute(data["deviceId"], data["deviceName"], data["deviceType"], data["ipAddress"], data["screenSize"], data["os"], data["timezone"], data["language"]);
    print(deviceInfoModel);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
