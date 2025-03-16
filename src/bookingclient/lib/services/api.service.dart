import 'package:http/http.dart' as http;
import 'dart:convert'; // To decode the JSON response

/// The [APIService] class is used to make API calls to the server.
/// It contains methods to check the health of the server, get locations,
/// get location desks, get all desks, and get all bookings.
class APIService {
  Future<void> checkHealth() async {
    print('CheckingConnectiobn');
    const url =
        'https://seatapi.greenglacier-b4a0e83d.northeurope.azurecontainerapps.io/healthcheck'; // Sample API
    final response = await http.get(Uri.parse(url)); // Send GET request
    if (response.statusCode == 200) {
      // If the server returns a successful response, parse the JSON
      //var data = jsonDecode(response.body); // Decode the response body
      print(response.body); // Just printing the data for now
    } else {
      print('Connection Failed');
      // If the request failed, throw an error
      throw Exception('Failed to load health');
    }
  }

  Future<void> getLocations() async {
    print('Getting Locations');
    const url =
        'https://seatapi.greenglacier-b4a0e83d.northeurope.azurecontainerapps.io/locations'; // Sample API
    final response = await http.get(Uri.parse(url)); // Send GET request
    if (response.statusCode == 200) {
      // If the server returns a successful response, parse the JSON
      //var data = jsonDecode(response.body); // Decode the response body
      print(response.body); // Just printing the data for now
    } else {
      print('Connection Failed');
      // If the request failed, throw an error
      throw Exception('Failed to load locations');
    }
  }

  Future<void> getLocation(int id) async {
    print('Getting Location');
    String url =
        'https://seatapi.greenglacier-b4a0e83d.northeurope.azurecontainerapps.io/locations/$id'; // Sample API
    final response = await http.get(Uri.parse(url)); // Send GET request
    if (response.statusCode == 200) {
      // If the server returns a successful response, parse the JSON
      //var data = jsonDecode(response.body); // Decode the response body
      print(response.body); // Just printing the data for now
    } else {
      print('Connection Failed');
      // If the request failed, throw an error
      throw Exception('Failed to load location');
    }
  }

  Future<void> getLocationDesks(int locationId) async {
    print('Getting Desks');
    String url =
        'https://seatapi.greenglacier-b4a0e83d.northeurope.azurecontainerapps.io/locations/$locationId/seats'; // Sample API
    final response = await http.get(Uri.parse(url)); // Send GET request
    if (response.statusCode == 200) {
      // If the server returns a successful response, parse the JSON
      //var data = jsonDecode(response.body); // Decode the response body
      print(response.body); // Just printing the data for now
    } else {
      print('Connection Failed');
      // If the request failed, throw an error
      throw Exception('Failed to load seats');
    }
  }

  Future<void> getAllDesks() async {
    print('Getting Desks');
    const url =
        'https://seatapi.greenglacier-b4a0e83d.northeurope.azurecontainerapps.io/seats'; // Sample API
    final response = await http.get(Uri.parse(url)); // Send GET request
    if (response.statusCode == 200) {
      // If the server returns a successful response, parse the JSON
      //var data = jsonDecode(response.body); // Decode the response body
      print(response.body); // Just printing the data for now
    } else {
      print('Connection Failed');
      // If the request failed, throw an error
      throw Exception('Failed to load seats');
    }
  }

  Future<void> getAllBookings() async {
    print('Getting Bookings');
    const url =
        'https://seatapi.greenglacier-b4a0e83d.northeurope.azurecontainerapps.io/bookings'; // Sample API
    final response = await http.get(Uri.parse(url)); // Send GET request
    if (response.statusCode == 200) {
      // If the server returns a successful response, parse the JSON
      //var data = jsonDecode(response.body); // Decode the response body
      print(response.body); // Just printing the data for now
    } else {
      print('Connection Failed');
      // If the request failed, throw an error
      throw Exception('Failed to load bookings');
    }
  }
}
