import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'infrastructure/app_controller/api_controller.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';
import 'infrastructure/utils/responsive.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  Get.put(ApiController());
  log("object");
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812), // must match your `init`
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,child) {
        Responsive.init(context); // Add this
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: initialRoute,
          getPages: Nav.routes,
        );
      }
    );
  }
}
