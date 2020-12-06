import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class AuthenticationService {
  String url = "http://ilokensystem.ddns.net:28080/careion/api/auth/login";
  final headers = {
    "Accept": "application/json",
    'Content-Type': 'application/json',
  };
  // final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
  Future<bool> authenticate(String userEmail, String password) async {
    var userDetails =
        json.encode({"userEmail": userEmail, "password": password});
    print("UserDetails => $userDetails");

    http.Response response =
        await http.post(url, body: userDetails, headers: headers);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response.statusCode == HttpStatus.ok;
  }
}
