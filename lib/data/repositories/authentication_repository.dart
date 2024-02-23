import 'dart:convert';

import 'package:klassrum/data/dataproviders/authentication_provider.dart';
import 'package:klassrum/data/models/AppUser.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepository {
  final AuthenticationAPI authAPI = AuthenticationAPI();

  Future<AppUser> _getUserById(String userId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final jwt = prefs.get('token').toString();
    final String response = await authAPI.fetchStudentData(userId, jwt);
    final data = jsonDecode(response);
    print(data);

    /*if (data['code'] != Null || data['code'].toString().contains('E')) {
      return AppUser.empty;
    } else {
      return AppUser.fromMap(data);
    }*/
    return AppUser.fromMap(data[0]);
  }

  Future<AppUser> getAppUser(String username, String password) async {
    final String response = await authAPI.login(username, password);
    final data = jsonDecode(response);
    print(data);

    if (data['code'].toString().contains('E')) {
      return AppUser.empty;
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', data['token']);
      return _getUserById(data['userId']);
    }
  }
}
