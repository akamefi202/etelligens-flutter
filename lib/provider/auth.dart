import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../models/http_exception.dart';

class Auth with ChangeNotifier {
  // String _token;
  // DateTime _expiryDate;
  // String _userId;

  Future<void> _authenticate(String email, String password) async {
    final url = 'http://ilokensystem.ddns.net:28080/careion/api/auth/login';
    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            'userEmail': email,
            'password': password,
          },
        ),
      );
      final responseData = json.decode(response.body);
      print("Response Data :" + responseData);

      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
    } catch (error) {
      print("Error: " + error['message']);
      throw error;
    }
  }

  Future<void> login(String email, String password) async {
    print("login: => $email, $password");
    return _authenticate(email, password);
  }
}
