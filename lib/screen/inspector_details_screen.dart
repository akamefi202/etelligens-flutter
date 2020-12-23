import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safera/provider/dashboard.dart';

class InspectionDetailScreen extends StatefulWidget {
  static const routeName = '/inspection-detail-screen';

  @override
  _InspectionDetailScreenState createState() => _InspectionDetailScreenState();
}

class _InspectionDetailScreenState extends State<InspectionDetailScreen> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    // Provider.of<Products>(context).fetchAndSetProducts(); // WON'T WORK!
    // Future.delayed(Duration.zero).then((_) {
    //   final String token = Provider.of<Auth>(context, listen: false).token;
    //   final String email = Provider.of<Auth>(context, listen: false).email;
    //   Provider.of<Certificates>(context).fetchAndSetProducts(email, token);
    // });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      var ttest = Provider.of<Certificates>(context).findById("PK9211");
      print(ttest.toString());
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final certData =
        ModalRoute.of(context).settings.arguments as List; // is the id!

    print("InspectionDetailScreen => ${certData[0]}");

    return Container(
      child: Text('farukh ${certData[0]}'),
    );
  }
}
