import 'package:faker/faker.dart';

import '../../domain/models/doctor_model.dart';
import '../provider/doctor_provider.dart';

abstract class DoctorRepository {
  factory DoctorRepository(DoctorProvider provider) => FakeDoctorRepository();

  Future<DoctorModel> fetchDocotorProfile(String id);
  Future<List<DoctorModel>> fetchLiveDoctors();
  Future<List<DoctorModel>> fetchPopularDoctors();
  Future<List<DoctorModel>> fetchFeatureDoctors();
  Future<List<String>> fetchAllSpecialties();
}

final faker = Faker();

class FakeDoctorRepository implements DoctorRepository {
  FakeDoctorRepository();

  // A list of mock doctors
  final List<DoctorModel> _doctors = List.generate(
    10,
    (index) => DoctorModel(
      id: index.toString(),
      name: faker.person.name(),
      email: faker.internet.email(),
      phone: faker.phoneNumber.us(),
      address: faker.address.streetAddress(),
      specialty: faker.randomGenerator.element(
          ['Cardiology', 'Dermatology', 'Neurology', 'Oncology', 'Pediatrics']),
      price: faker.randomGenerator.decimal(min: 99, scale: 999),
      profile: ProfileModel(
        rating: faker.randomGenerator.decimal(min: 1, scale: 4), 
        available: true, 
        patientStories: faker.randomGenerator.decimal(min: 1, scale: 999).round(), 
        satisfaction: faker.randomGenerator.decimal(min: 0, scale: 100), 
        views: faker.randomGenerator.decimal(min: 1, scale: 999).round(),
      ),
    ),
  );

  final List<String> _specialties = ['Cardiology', 'Dermatology', 'Neurology', 'Oncology', 'Pediatrics'];

  final _duration = const Duration(seconds: 3);

  @override
  Future<DoctorModel> fetchDocotorProfile(String id) async {
    await Future.delayed(_duration);
    return _doctors.firstWhere((doctor) => doctor.id == id);
  }

  @override
  Future<List<DoctorModel>> fetchLiveDoctors() async {
    await Future.delayed(_duration);
    return _doctors;
  }

  @override
  Future<List<DoctorModel>> fetchPopularDoctors() async {
    await Future.delayed(_duration);
    return _doctors;
  }

  
  @override
  Future<List<DoctorModel>> fetchFeatureDoctors() async {
    await Future.delayed(_duration);
    return _doctors;
  }

  @override
  Future<List<String>> fetchAllSpecialties() async {
    await Future.delayed(_duration);
    return _specialties;
  }
}
