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
    required this.rating,
    required this.available,
  });

  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String specialty;
  final int rating;
  final bool available;


  // A method that converts the doctor entity to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'specialty': specialty,
      'rating': rating,
      'available': available,
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
      rating: json['rating'] as int,
      available: json['available'] as bool,
    );
  }
}