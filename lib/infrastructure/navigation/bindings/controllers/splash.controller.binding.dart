import 'package:awesome_portfolio/infrastructure/app_controller/api_controller.dart';
import 'package:get/get.dart';

import '../../../../domain/core/repositories/get_device_info_repo_impl.dart';
import '../../../../domain/core/use_case/get_device_info_use_case.dart';
import '../../../../domain/services/device_info_service.dart';
import '../../../../presentation/splash/controllers/splash.controller.dart';

class SplashControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(()=>GetDeviceInfoRepoImpl(ApiController.instance.baseApiService));
    Get.put(()=>GetDeviceInfoUseCase(Get.find<GetDeviceInfoRepoImpl>()));
    Get.lazyPut<SplashController>(
      () => SplashController(Get.find<GetDeviceInfoUseCase>()),
    );
  }
}
