import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/http_exception.dart';

class Auth with ChangeNotifier {
  static const url = 'http://ilokensystem.ddns.net:28080/careion/api';
  final headers = {
    "Accept": "application/json",
    'Content-Type': 'application/json',
  };

  var userDetails;
  String _token;
  String userName;
  String userId;
  String email;
  String role;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if (_token != null) {
      return _token;
    }
    return null;
  }

  Future<void> _authenticate(String email, String password) async {
    final urllogin = '$url/auth/login';
    try {
      final response = await http.post(urllogin,
          body: json.encode(
            {
              'userEmail': email,
              'password': password,
            },
          ),
          headers: headers);
      final responseData = json.decode(response.body);
      print("Response Data :" + responseData.toString());

      if (responseData['error'] == 401) {
        throw HttpException(responseData['error']['message']);
      }
      // userLogin  Successfully
      userDetails = responseData['user'];
      _token = responseData['user']['accessToken'];
      userName = responseData['user']['userName'];
      userId = responseData['user']['userId'];
      email = responseData['user']['email'];
      role = responseData['user']['role'];

      notifyListeners();
      // Save userDetais in LocalStorage
      final prefs = await SharedPreferences.getInstance();
      var userData = json.encode(
        {
          'token': _token,
          'userId': userId,
          "userName": userName,
          "email": email,
          "role": role,
        },
      );
      prefs.setString(
          'token', json.encode(responseData['user']['accessToken']));
      prefs.setString('userData', userData);
    } catch (error) {
      print("Error: " + error.toString());
      throw error;
    }
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    final extractedUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    _token = extractedUserData['token'];
    userId = extractedUserData['userId'];

    notifyListeners();
    return true;
  }

  Future<void> login(String email, String password) async {
    print("login: => $email, $password");
    return _authenticate(email, password);
  }

  Future<void> logout() async {
    _token = null;
    userId = null;

    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    // prefs.remove('userData');
    prefs.clear();
  }
}
