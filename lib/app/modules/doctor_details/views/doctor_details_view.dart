import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/doctor_details_controller.dart';

class DoctorDetailsView extends GetView<DoctorDetailsController> {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: const [
            // DoctorDetails(),
            SizedBox(height: 25),
            // DoctorState(),
            SizedBox(height: 25),
            // ServicesDescription(),
            SizedBox(height: 30),
            // MapWidget(),
          ],
        ),
      ),
      appBar: AppBar(),
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ServicesDescription extends StatelessWidget {
  const ServicesDescription({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class DoctorState extends StatelessWidget {
  const DoctorState({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnconstrainedBox();
  }
}
