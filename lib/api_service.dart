import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {
  final String baseUrl = 'http://yourapiurl.com/api';

  // Fetch a user by ID
  Future<User> getUser(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$id'));
    
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }

  // Create a new user
  Future<User> createUser(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(user.toJson()),
    );

    if (response.statusCode == 201) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }

  // Update an existing user
  Future<User> updateUser(int id, User user) async {
    final response = await http.put(
      Uri.parse('$baseUrl/users/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(user.toJson()),
    );

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update user');
    }
  }

  // Delete a user
  Future<void> deleteUser(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/users/$id'));

    if (response.statusCode != 204) {
      throw Exception('Failed to delete user');
    }
  }
}
