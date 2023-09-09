import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/popular_doctor_controller.dart';

class PopularDoctorView extends GetView<PopularDoctorController> {
  const PopularDoctorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO: sec1
          Container(
            height: 243,
            width: double.infinity,
            color: Colors.amber,
          ),
          const SizedBox(height: 20),
          // TODO: sec2
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          )
        ],
      ),
      appBar: AppBar(),
    );
  }
}
