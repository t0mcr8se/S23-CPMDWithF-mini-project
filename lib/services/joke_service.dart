import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tinder_with_chuck_norris/models/joke.dart';
import 'package:tinder_with_chuck_norris/constants.dart';

class JokeService {
  Future<Joke> fetchRandomJoke() async {
    try {
      final response = await http.get(Uri.parse('${baseUrl}random'));
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        return Joke.fromJson(responseData);
      } else {
        throw Exception('Failed to fetch a joke');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
