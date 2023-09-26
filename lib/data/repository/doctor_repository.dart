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
  Future<List<DoctorModel>> findDoctors(String search);
  Future<List<String>> fethAllSlots(String id, DateTime date);
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
      avatarPath:
          "https://thronesapi.com/assets/images/${faker.randomGenerator.element([
            'daenerys.jpg',
            'sam.jpg',
            'jon-snow.jpg',
            'arya-stark.jpg',
            'sansa-stark.jpeg',
            'bran-stark.jpg',
            'ned-stark.jpg',
            'robert-baratheon.jpeg',
            'jaime-lannister.jpg',
            'cersei.jpg'
          ])}",
      profile: ProfileModel(
        rating: faker.randomGenerator.decimal(min: 1, scale: 4),
        available: true,
        patientStories:
            faker.randomGenerator.decimal(min: 1, scale: 999).round(),
        satisfaction: faker.randomGenerator.decimal(min: 0, scale: 100),
        views: faker.randomGenerator.decimal(min: 1, scale: 999).round(),
      ),
    ),
  );

  static const List<String> _specialties = [
    'Cardiology',
    'Dermatology',
    'Neurology',
    'Oncology',
    'Pediatrics'
  ];

  static const _duration = Duration(seconds: 3);

  final _timeSlots = List.generate(
      10,
      (index) =>
          faker.randomGenerator.decimal(min: 13, scale: 19).round().toString());

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

  @override
  Future<List<DoctorModel>> findDoctors(String search) async {
    await Future.delayed(_duration);
    return _doctors
        .where((doctor) =>
            doctor.name.contains(search) || doctor.specialty.contains(search))
        .toList();
  }

  @override
  Future<List<String>> fethAllSlots(String id, DateTime date) async {
    await Future.delayed(_duration);
    final int start = faker.randomGenerator.decimal(min: 0, scale: _timeSlots.length -1 ).round();
    final int end = faker.randomGenerator.decimal(min: start, scale: _timeSlots.length -1 ).round();
    return _timeSlots.sublist(start, end);
  }
}
