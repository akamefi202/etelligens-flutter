import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../models/http_exception.dart';

class Auth with ChangeNotifier {
  final headers = {
    "Accept": "application/json",
    'Content-Type': 'application/json',
  };

  String _token;
  DateTime _expiryDate;
  String _userId;
  bool _isAuthenticated = false;

  bool get isAuth {
    return _isAuthenticated;
  }

  String get token {
    return _token;
  }

  Future<void> _authenticate(String email, String password) async {
    final url = 'http://ilokensystem.ddns.net:28080/careion/api/auth/login';
    try {
      final response = await http.post(url,
          body: json.encode(
            {
              'userEmail': email,
              'password': password,
            },
          ),
          headers: headers);
      final responseData = json.decode(response.body);
      print("Response Data :" + responseData.toString());

      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      // userLogin  Successfully
      _isAuthenticated = true;
      _token = responseData['user']['accessToken'];
      _userId = responseData['user']['userId'];

      notifyListeners();
    } catch (error) {
      print("Error: " + error.toString());
      throw error;
    }
  }

  Future<void> login(String email, String password) async {
    print("login: => $email, $password");
    return _authenticate(email, password);
  }
}
