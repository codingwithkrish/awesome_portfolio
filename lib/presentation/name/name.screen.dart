import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/name.controller.dart';

class NameScreen extends GetView<NameController> {
  const NameScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NameScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NameScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
