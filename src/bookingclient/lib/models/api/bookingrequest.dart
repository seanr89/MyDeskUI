class BookingRequestDTO {
  final int id;
  final int deskId;
  final int staffId;
  final DateTime requestDate;
  final String state;

  BookingRequestDTO({
    required this.id,
    required this.deskId,
    required this.staffId,
    required this.requestDate,
    required this.state,
  });

  factory BookingRequestDTO.fromJson(Map<String, dynamic> json) {
    return BookingRequestDTO(
      id: json['id'] as int,
      deskId: json['deskId'] as int,
      staffId: json['staffId'] as int,
      requestDate: DateTime.parse(json['requestDate'] as String),
      state: json['state'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'deskId': deskId,
      'staffId': staffId,
      'requestDate': requestDate.toIso8601String(),
      'state': state,
    };
  }

  @override
  String toString() {
    return 'BookingRequestDTO{id: $id, deskId: $deskId, staffId: $staffId, requestDate: $requestDate, state: $state}';
  }

  //   @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is BookingRequestDTO &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         deskId == other.deskId &&
  //         staffId == other.staffId &&
  //         requestDate == other.requestDate &&
  //         state == other.state;

  // @override
  // int get hashCode =>
  //     id.hashCode ^
  //     deskId.hashCode ^
  //     staffId.hashCode ^
  //     requestDate.hashCode ^
  //     state.hashCode;
}
