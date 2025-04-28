import 'package:awesome_portfolio/infrastructure/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset("assets/lottie/loading.json"),
          SizedBox(height: Responsive.spaceMedium,),
          const Center(
            child: Text(
              'Making Web App Ready For You',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
