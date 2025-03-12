import '../models/api/location.dart';

class MockAPIService {
  List<Location> getLocations() {
    return [
      Location(id: 1, name: 'Dummy Location 1'),
      Location(id: 2, name: 'Dummy Location 2'),
      Location(id: 3, name: 'Dummy Location 3'),
    ];
  }
}
