import 'package:http/http.dart' as http;
import 'dart:convert'; // To decode the JSON response

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

  // Future<void> fetchUsers() async {
  //   final url = 'https://jsonplaceholder.typicode.com/users'; // Sample API
  //   final response = await http.get(Uri.parse(url)); // Send GET request
  //   if (response.statusCode == 200) {
  //     // If the server returns a successful response, parse the JSON
  //     var data = jsonDecode(response.body); // Decode the response body
  //     print(data); // Just printing the data for now
  //   } else {
  //     // If the request failed, throw an error
  //     throw Exception('Failed to load users');
  //   }
  // }
}
