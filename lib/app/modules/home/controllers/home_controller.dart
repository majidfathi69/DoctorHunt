import 'package:get/get.dart';

import '../../../../data/repository/doctor_repository.dart';
import '../../../../domain/models/doctor_model.dart';

class HomeController extends GetxController {
  HomeController({required this.repository});

  DoctorRepository repository;

  final List<DoctorModel> _liveDoctors = [];
  List<DoctorModel> get liveDoctors => _liveDoctors;

  final _loadingLiveDoctors = true.obs;
  get loadingLiveDoctors => _loadingLiveDoctors;

  final List<DoctorModel> _popularDoctors = [];
  List<DoctorModel> get popularDoctors => _popularDoctors;

  final _loadingPopularDoctors = true.obs;
  get loadingPopularDoctors => _loadingPopularDoctors;

  @override
  void onInit() {
    repository.fetchLiveDoctors().then((List<DoctorModel> doctors) {
      _liveDoctors.clear();
      _liveDoctors.addAll(doctors);
      _loadingLiveDoctors.value = false;
    });

    repository.fetchPopularDoctors().then((List<DoctorModel> doctors){
      _popularDoctors.clear();
      _popularDoctors.addAll(doctors);
      _loadingPopularDoctors.value = false;
    });
    super.onInit();
  }
}
