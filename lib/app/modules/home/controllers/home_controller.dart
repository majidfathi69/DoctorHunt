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

  final List<DoctorModel> _featureDoctors = [];
  List<DoctorModel> get featureDoctors => _featureDoctors;

  final _loadingFeatureDoctors = true.obs;
  get loadingFeatureDoctors => _loadingFeatureDoctors;


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
    
    repository.fetchPopularDoctors().then((List<DoctorModel> doctors){
      _featureDoctors.clear();
      _featureDoctors.addAll(doctors);
      _loadingFeatureDoctors.value = false;
    });
    
    super.onInit();
  }
}
