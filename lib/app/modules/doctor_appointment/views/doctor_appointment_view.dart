import 'package:flutter/material.dart';

class DoctorAppointmentView extends StatelessWidget {
  const DoctorAppointmentView({super.key});

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
            SizedBox(height: 100), // TODO: AppBar
            // DoctorDetails(),
            SizedBox(height: 30),
            // AppointmentFor(),
            SizedBox(height: 30),
            // WhoIsPatient(),
          ],
        ),
      ),
    );
  }
}

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class AppointmentFor extends StatelessWidget {
  const AppointmentFor({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class WhoIsPatient extends StatelessWidget {
  const WhoIsPatient({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
