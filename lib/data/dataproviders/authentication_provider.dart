import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationAPI {
  Future<String> login(String username, String password) async {
    final Uri url =
        Uri.https('klassrum.onrender.com', 'api/auth/students/login');
    final response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "username": username,
          "password": password,
        }));

    return response.body;
  }

  Future<String> fetchStudentData(String id, String token) async {
    final Uri url = Uri.https('klassrum.onrender.com', 'api/students/$id');
    final response = await http.get(url, headers: {'Authorization': 'Bearer $token'},);

    return response.body;
  }
}
