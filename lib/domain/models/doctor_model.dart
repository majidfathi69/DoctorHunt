// A class that represents a doctor entity
class DoctorModel {
  // A constructor that initializes all the fields of the doctor entity
  DoctorModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.specialty,
    required this.price,
    required this.profile,
  });

  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String specialty;
  final double price;
  final ProfileModel profile;

  // A method that converts the doctor entity to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'specialty': specialty,
    };
  }

  // A method that creates a doctor entity from a JSON object
  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      specialty: json['specialty'] as String,
      price: json['price'] as double,
      profile: ProfileModel.fromJson(json['profile']),
    );
  }
}

class ProfileModel {
  ProfileModel({
    required this.rating,
    required this.available,
    required this.patientStories,
    required this.satisfaction,
    required this.views,
  });

  final double rating;
  final bool available;
  final int patientStories;
  final double satisfaction;
  final int views;

  Map<String, dynamic> toJson() {
    return {
      "rating": rating,
      "available": available,
      "patientStories": patientStories,
      "satisfaction": satisfaction,
      "views": views,
    };
  }

  factory ProfileModel.fromJson(Map<String, String> json) {
    return ProfileModel(
      rating: json['rating'] as double,
      available: json['available'] as bool,
      patientStories: json['patientStories'] as int,
      satisfaction: json['satisfaction'] as double,
      views: json['views'] as int,
    );
  }
}
