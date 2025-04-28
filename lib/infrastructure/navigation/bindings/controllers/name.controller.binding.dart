import 'package:get/get.dart';

import '../../../../presentation/name/controllers/name.controller.dart';

class NameControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NameController>(
      () => NameController(),
    );
  }
}
