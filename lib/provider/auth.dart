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
  String _email;
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

  String get email {
    if (_email != null) {
      return _email;
    }
    return null;
  }

  Future<void> _authenticate(String email, String password) async {
    final urlLogin = '$url/auth/login';
    try {
      final response = await http.post(urlLogin,
          body: json.encode(
            {
              'userEmail': email,
              'password': password,
            },
          ),
          headers: headers);
      final responseData = json.decode(response.body);
      print("Response Data :" + responseData.toString());

      if (responseData['status']['code'] != 0) {
        logout();
        throw HttpException(responseData['status']['message']);
      }
      // userLogin  Successfully
      userDetails = responseData['user'];
      _token = responseData['user']['accessToken'];
      userName = responseData['user']['userName'];
      userId = responseData['user']['userId'];
      _email = responseData['user']['email'];
      role = responseData['user']['role'];

      // Save userDetais in LocalStorage
      final prefs = await SharedPreferences.getInstance();
      var userData = json.encode({
        'token': _token,
        'userId': userId,
        "userName": userName,
        "email": _email,
        "role": role,
      });
      prefs.setString('token', _token);
      prefs.setString('email', _email);
      prefs.setString('userData', userData);
      notifyListeners();
    } catch (error) {
      print("Error: " + error.toString());
      // throw error;
    }
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    // final extractedUserData =
    //     await json.decode(prefs.getString('userData')) as Map<String, Object>;

    _token = prefs.getString('token');
    _email = prefs.getString('email');
    userId = prefs.getString('userId');

    notifyListeners();
    return true;
  }

  Future<void> login(String email, String password) async {
    print("login: => $email, $password");
    return _authenticate(email.trim(), password.trim());
  }

  Future<void> logout() async {
    _token = null;
    _email = null;
    userId = null;

    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    // prefs.remove('userData');
    prefs.clear();
  }
}
