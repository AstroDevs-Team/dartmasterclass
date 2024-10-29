import 'package:http/http.dart' as http;
import 'dart:convert';  // To handle JSON encoding/decoding

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  
  // Sending an HTTP GET request
  var response = await http.get(url);

  // Check if the request was successful
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);  // Decode the JSON response
    print('Post Title: ${jsonResponse['title']}'); // Access the title field
  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
