import 'package:get/get.dart';

import '../controllers/doctor_appointment_controller.dart';

class DoctorAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorAppointmentController>(
        () => DoctorAppointmentController());
  }
}
