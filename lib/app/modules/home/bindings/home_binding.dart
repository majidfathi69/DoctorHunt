import 'package:get/get.dart';

import '../../../../data/provider/doctor_provider.dart';
import '../../../../data/repository/doctor_repository.dart';
import '../controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
        HomeController(repository: DoctorRepository(DoctorProvider())));
  }
}
