import 'package:flutter/material.dart';

import 'package:tablet/dashboard.dart';
import 'package:tablet/air_test/airtest_1.dart';
import 'package:tablet/air_test/airtest_2.dart';
import 'package:tablet/bottom_hole_inspection/bottom_hole_1.dart';
import 'package:tablet/bottom_hole_inspection/bottom_hole_2.dart';
import 'package:tablet/dye_penetrant/dye_1.dart';
import 'package:tablet/dye_penetrant/dye_2.dart';
import 'package:tablet/hand_power/hand_power_1.dart';
import 'package:tablet/hand_power/hand_power_2.dart';
import 'package:tablet/heavy_power/heavy_power_2.dart';
import 'package:tablet/magnatic_particle/magnatic_particle_2.dart';
import 'package:tablet/provider/services.dart';
import 'package:tablet/sing_shacle/sing_shacle_2.dart';
import 'package:tablet/tank_clean/tank_clean_2.dart';
import 'package:tablet/tubing_drill/tubing_drill_2.dart';
import 'package:tablet/ultra_sonic/ultra_sonic_2.dart';
import 'package:tablet/visual_inspection/visual_inspection_2.dart';
import 'package:tablet/visual_thread/visual_thread_2.dart';
import 'package:tablet/visual_thread_drill/visual_thread_drill_2.dart';
import 'package:tablet/load_test/load_test_2.dart';

var routes = <String, WidgetBuilder>{
  "/dashborad": (BuildContext context) => DashbordScreen(),
  "/air_test/airtest_1": (BuildContext context) => AirTest1(),
  "/air_test/airtest_2": (BuildContext context) => AirTest2(),
  "/bottom_hole_inspection/bottom_hole_1": (BuildContext context) =>
      BottomHole1(),
  "/bottom_hole_inspection/bottom_hole_2": (BuildContext context) =>
      BottomHole2(),
  "/dye_penetrant/dye_1": (BuildContext context) => Dye1(),
  "/dye_penetrant/dye_2": (BuildContext context) => Dye2(),
  "/hand_power/hand_power_1": (BuildContext context) => HandPower1(),
  "/hand_power/hand_power_2": (BuildContext context) => HandPower2(),
  "/heavy_power/heavy_power_2": (BuildContext context) => HeavyPower2(),
  "/magnatic_particle/magnatic_particle_2": (BuildContext context) =>
      MagnaticParticle2(),
  "/sing_shacle/sing_shacle_2": (BuildContext context) => SingShacle2(),
  "/tank_clean/tank_clean_2": (BuildContext context) => TankClean2(),
  "/tubing_drill/tubing_drill_2": (BuildContext context) => TubingDrill2(),
  "/ultra_sonic/ultra_sonic_2": (BuildContext context) => UltraSonic2(),
  "/visual_inspection/visual_inspection_2": (BuildContext context) =>
      VisualInspection2(),
  "/visual_thread/visual_thread_2": (BuildContext context) => VisualThread2(),
  "/visual_thread_drill/visual_thread_drill_2": (BuildContext context) =>
      VisualThreadDrill2(),
  "/load_test/load_test_2": (BuildContext context) => LoadTest2(),
  // '/product/deduct': (BuildContext context) => MaterialScanner(
  //       addProduct: false,
  //     ),
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: routes,
    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthenticationService _authenticationService = new AuthenticationService();

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200.0),
                ),
                margin: EdgeInsets.only(top: data.size.height * 0.08),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(300.0),
                        border:
                            Border.all(color: Colors.teal[200], width: 4.0)),
                    margin: EdgeInsets.all(6.0),
                    padding: EdgeInsets.all(18.0),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: data.size.width * 0.22,
                      height: data.size.width * 0.22,
                    )),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      // id field
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        // border: Border.all(color: Colors.grey[400], width: 1.8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[500],
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              spreadRadius: 1.0),
                        ],
                      ),
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.emailAddress,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 25, bottom: 11, top: 11, right: 25),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          left: data.size.width * 0.2,
                          right: data.size.width * 0.2,
                          top: data.size.height * 0.106),
                    ),
                    Container(
                      // password filed
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          // border:
                          //     Border.all(color: Colors.grey[600], width: 1.2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[500],
                                offset: Offset(1.0, 1.0),
                                blurRadius: 3.0,
                                spreadRadius: 1.0),
                          ]),
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 25, bottom: 11, top: 11, right: 25),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          left: data.size.width * 0.2,
                          right: data.size.width * 0.2,
                          top: data.size.height * 0.03),
                    ),
                    Container(
                      // login button
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: Colors.black,
                      ),
                      child: FlatButton(
                        onPressed: () => {
                          // _authenticationService.authenticate(
                          //     "syazwan.shohaimi@gmail.com", "Simontempler0")

                          Navigator.of(context)
                              .pushReplacementNamed("/dashborad")
                        },
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: data.size.width * 0.03),
                        ),
                        padding: EdgeInsets.only(left: 40, right: 40),
                      ),
                      margin: EdgeInsets.only(
                          left: data.size.width * 0.2,
                          right: data.size.width * 0.2,
                          top: data.size.height * 0.035,
                          bottom: data.size.height * 0.02),
                    ),
                    InkWell(
                      // frogot password
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed("/dashborad");
                      },
                      child: Container(
                        child: Text(
                          'Forgot Password? Reset it',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: data.size.width * 0.021,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
