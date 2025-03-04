class StaffDTO {
  final int id;
  final String name;
  final String email;
  final bool active;
  String locationName;

  StaffDTO({
    required this.id,
    required this.name,
    required this.email,
    required this.active,
    this.locationName = "No Location",
  });

  // Optional: Add a factory method for creating from JSON
  factory StaffDTO.fromJson(Map<String, dynamic> json) {
    return StaffDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      active: json['active'] as bool,
      locationName: json['locationName'] as String? ?? "No Location",
    );
  }

  // Optional: Add a toJson method for converting to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'active': active,
      'locationName': locationName,
    };
  }

  @override
  String toString() {
    return 'StaffDTO{id: $id, name: $name, email: $email, active: $active, locationName: $locationName}';
  }
}

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is StaffDTO &&
//           runtimeType == other.runtimeType &&
//           id == other.id &&
//           name == other.name &&
//           email == other.email &&
//           active == other.active &&
//           locationName == other.locationName;

//   @override
//   int get hashCode =>
//       id.hashCode ^
//       name.hashCode ^
//       email.hashCode ^
//       active.hashCode ^
//       locationName.hashCode;
// }