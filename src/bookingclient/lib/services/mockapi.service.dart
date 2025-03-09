import '../models/api/location.dart';

class MockAPIService {
  Future<List<Location>> getLocations() async {
    return [
      Location(id: 1, name: 'Location 1'),
      Location(id: 2, name: 'Location 2'),
      Location(id: 3, name: 'Location 3'),
    ];
  }
}
