import 'package:flutter/material.dart';

class InspectionDetailScreen extends StatelessWidget {
  static const routeName = '/inspection-detail-screen';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // is the id!

    print("InspectionDetailScreen => $productId");

    return Container(
      child: Text('farukh $productId'),
    );
  }
}
