import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import '../models/http_exception.dart';
import '../models/certificate.dart';

class Certificates with ChangeNotifier {
  List<Certificate> _items = [
    // Certificate(
    //     certId: "CR0001",
    //     inspectionType: "laskla",
    //     testDate: "2020-12-21T10:23:56.055+0000",
    //     client: "Farukh",
    //     po: "2193209",
    //     refNo: "786",
    //     serialNo: "1234567",
    //     locationOfTest: "Turkish"),
    // Certificate(
    //     certId: "CR0002",
    //     inspectionType: "nwefoe",
    //     testDate: "2020-12-04T10:23:56.055+0000",
    //     client: "Farukh Saifi",
    //     po: "2193209",
    //     refNo: "786",
    //     serialNo: "1234567",
    //     locationOfTest: "Manali"),
    // Certificate(
    //     certId: "CR0003",
    //     inspectionType: " Boomm",
    //     testDate: "2020-12-04T10:23:56.055+0000",
    //     client: "Sammeer",
    //     po: "2193209",
    //     refNo: "786",
    //     serialNo: "1234567",
    //     locationOfTest: "Safari"),
    // Certificate(
    //     certId: "CR0004",
    //     inspectionType: "test122",
    //     testDate: "2020-12-04T10:23:56.055+0000",
    //     client: "Sammeer Saifi",
    //     po: "2193209",
    //     refNo: "786",
    //     serialNo: "1234567",
    //     locationOfTest: "Safari"),
    // Certificate(
    //     certId: "CR0005",
    //     inspectionType: "Farukh Sexy ",
    //     testDate: "2020-12-04T10:23:56.055+0000",
    //     client: "Sammeer kadva",
    //     po: "2193209",
    //     refNo: "786",
    //     serialNo: "1234567",
    //     locationOfTest: "Safari"),
  ];
  // var _showFavoritesOnly = false;

  List<Certificate> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  // List<Certificate> get favoriteItems {
  //   return _items.where((prodItem) => prodItem.isFavorite).toList();
  // }

  // Certificate findById(String id) {
  //   return _items.firstWhere((prod) => prod.id == id);
  // }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  Future<void> fetchAndSetProducts(token) async {
    // print("token fetchAndSetProducts => $email");
    const url =
        'http://ilokensystem.ddns.net:28080/careion/api/user/getnewtasklist';

    final headers = {
      "Accept": "application/json",
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    try {
      final response = await http.post(url,
          body: json.encode({"email": "jessica@gmail.com"}), headers: headers);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final finalExtData = extractedData['newTaskList'];

      if (finalExtData == null) {
        print("null something");
        return;
      }
      print("FINALDATATA=> $finalExtData");
      final List<Certificate> loadedCertificates = [];
      finalExtData.forEach((cretData) => {
            loadedCertificates.add(Certificate(
              certId: cretData['certId'],
              inspectionType: cretData['inspectionType'],
              testDate: cretData['testDate'],
              client: cretData['client'],
              po: cretData['po'],
              refNo: cretData['refNo'],
              serialNo: cretData['serialNo'],
              locationOfTest: cretData['locationOfTest'],
            )),
          });
      _items = loadedCertificates;
      notifyListeners();
    } catch (error) {
      print("error Ctch =>  $error ");
    }
  }

  // Future<void> addProduct(Certificate product) async {
  //   const url = 'https://flutter-update.firebaseio.com/products.json';
  //   try {
  //     final response = await http.post(
  //       url,
  //       body: json.encode({
  //         'title': product.title,
  //         'description': product.description,
  //         'imageUrl': product.imageUrl,
  //         'price': product.price,
  //         'isFavorite': product.isFavorite,
  //       }),
  //     );
  //     final newProduct = Product(
  //       title: product.title,
  //       description: product.description,
  //       price: product.price,
  //       imageUrl: product.imageUrl,
  //       id: json.decode(response.body)['name'],
  //     );
  //     _items.add(newProduct);
  //     // _items.insert(0, newProduct); // at the start of the list
  //     notifyListeners();
  //   } catch (error) {
  //     print(error);
  //     throw error;
  //   }
  // }

  // Future<void> updateProduct(String id, Certificate newProduct) async {
  //   final prodIndex = _items.indexWhere((prod) => prod.id == id);
  //   if (prodIndex >= 0) {
  //     final url = 'https://flutter-update.firebaseio.com/products/$id.json';
  //     await http.patch(url,
  //         body: json.encode({
  //           'title': newProduct.title,
  //           'description': newProduct.description,
  //           'imageUrl': newProduct.imageUrl,
  //           'price': newProduct.price
  //         }));
  //     _items[prodIndex] = newProduct;
  //     notifyListeners();
  //   } else {
  //     print('...');
  //   }
  // }

  // Future<void> deleteProduct(String id) async {
  //   final url = 'https://flutter-update.firebaseio.com/products/$id.json';
  //   final existingProductIndex = _items.indexWhere((prod) => prod.id == id);
  //   var existingProduct = _items[existingProductIndex];
  //   _items.removeAt(existingProductIndex);
  //   notifyListeners();
  //   final response = await http.delete(url);
  //   if (response.statusCode >= 400) {
  //     _items.insert(existingProductIndex, existingProduct);
  //     notifyListeners();
  //     throw HttpException('Could not delete product.');
  //   }
  //   existingProduct = null;
  // }
}
