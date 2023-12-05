import 'package:get/get.dart';

import '../controllers/popular_doctor_controller.dart';

class PopularDoctorBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PopularDoctorController>(
        () => PopularDoctorController());
  }
}