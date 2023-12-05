import 'package:get/get.dart';

import '../controllers/doctor_select_time_controller.dart';

class DoctorSelectTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorSelectTimeController>(
        () => DoctorSelectTimeController());
  }
}
