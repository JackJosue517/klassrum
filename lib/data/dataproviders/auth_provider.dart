import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthDataProvider {
  Future<String> login(String username, String password) async {
    try {
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

      if (response.statusCode != 200) {
        return 'Une erreur inattendue est survenue !!!!';
      }
      return response.body;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<String> fetchStudentData(String id, String token) async {
    try {
      final Uri url = Uri.https('klassrum.onrender.com', 'api/students/$id');
      final response = await http.get(
        url,
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode != 200) {
        return jsonEncode({'code': 'E'});
      }
      return response.body;
    } catch (e) {
      throw e.toString();
    }
  }
}
