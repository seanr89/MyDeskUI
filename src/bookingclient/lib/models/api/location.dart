import 'package:bookingclient/models/api/desk.dart';

class Location {
  int? id;
  String name;
  int? deskcount;
  List<Desk>? desks;

  Location({required this.id, required this.name, this.deskcount, this.desks});
}
