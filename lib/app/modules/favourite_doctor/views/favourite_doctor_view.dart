import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/favourite_doctor_controller.dart';

class FavouriteDoctorView extends GetView<FavouriteDoctorController> {
  const FavouriteDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            // child: SearchBarWidget(),
          ),
          SizedBox(height: 25),
          SizedBox(
            height: 375,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // child: FavouritsDoctors(),
            ),
          ),
          SizedBox(height: 25),
          // FeatureDoctors(),
        ],
      ),
      appBar: AppBar(),
    );
  }
}

class FeatureDoctors extends StatelessWidget {
  const FeatureDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class FavouritsDoctors extends StatelessWidget {
  const FavouritsDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
