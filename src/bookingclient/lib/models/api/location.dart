import 'package:bookingclient/models/api/desk.dart';

class Location {
  int? id;
  String? name;
  int? deskcount;
  List<Desk>? desks;

  Location({this.id, this.name, this.deskcount, this.desks});
}
