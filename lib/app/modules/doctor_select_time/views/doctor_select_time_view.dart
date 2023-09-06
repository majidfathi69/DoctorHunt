import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/doctor_select_time_controller.dart';

class DoctorSelectTimeView extends GetView<DoctorSelectTimeController> {
  const DoctorSelectTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO: sec1
          Container(
            height: 88,
            width: 335,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            color: Colors.amber,
          ),
          const SizedBox(height: 24),
          // TODO: sec2
          Container(
            height: 54,
            width: double.infinity,
            color: Colors.amber,
          ),
          const SizedBox(height: 18),
          // TODO: sec3
          Center(
            child: Container(
              height: 64,
              width: 135,
              color: Colors.amber,
            ),
          ),
          const SizedBox(height: 17),
          // TODO: sec4
          Center(
            child: Container(
              width: 306,
              height: 152,
              color: Colors.amber,
            ),
          ),
        ],
      ),
      appBar: AppBar(),
    );
  }
}
