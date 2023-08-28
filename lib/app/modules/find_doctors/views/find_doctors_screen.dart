import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entity/doctor_model.dart';
import '../controllers/find_doctors_controller.dart';

class FindDoctorsView extends GetView<FindDoctorsController> {
  const FindDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 54,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const SearchWidget(),
          ),
          const SizedBox(height: 24),
          DoctorsWidget(
            doctorsList: [
              DoctorModel(),
              DoctorModel(),
              DoctorModel(),
              DoctorModel(),
              DoctorModel(),
              DoctorModel(),
              DoctorModel(),
            ],
          ),
        ],
      ),
      appBar: AppBar(),
    );
  }
}

class DoctorsWidget extends StatelessWidget {
  final List<DoctorModel> doctorsList;
  const DoctorsWidget({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var doctor in doctorsList)
          Container(
            margin: const EdgeInsets.all(5),
            width: 334,
            height: 170,
            child: DoctorWidget(
              doctor: doctor,
            ),
          ),
      ],
    );
  }
}

class DoctorWidget extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorWidget({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.amber);
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.amber);
  }
}
