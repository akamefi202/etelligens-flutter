// import 'dart:convert';

import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;

class Certificate with ChangeNotifier {
  final String certId;
  final String inspectionType;
  final String testDate;
  final String client;
  final String po;
  final String refNo;
  final String serialNo;
  final String locationOfTest;

  Certificate({
    @required this.certId,
    this.inspectionType,
    this.testDate,
    this.client,
    this.po,
    this.refNo,
    this.serialNo,
    this.locationOfTest,
  });

  // Future<void> toggleFavoriteStatus() async {
  //   final oldStatus = isFavorite;
  //   isFavorite = !isFavorite;
  //   notifyListeners();
  //   final url = 'https://flutter-update.firebaseio.com/products/$id.json';
  //   try {
  //     final response = await http.patch(
  //       url,
  //       body: json.encode({
  //         'isFavorite': isFavorite,
  //       }),
  //     );
  //     if (response.statusCode >= 400) {
  //       _setFavValue(oldStatus);
  //     }
  //   } catch (error) {
  //     _setFavValue(oldStatus);
  //   }
  // }
}
