import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safera/provider/dashboard.dart';

import 'package:safera/screen/dashboard_screen.dart';
import 'package:safera/air_test/airtest_1.dart';
import 'package:safera/air_test/airtest_2.dart';
import 'package:safera/bottom_hole_inspection/bottom_hole_1.dart';
import 'package:safera/bottom_hole_inspection/bottom_hole_2.dart';
import 'package:safera/dye_penetrant/dye_1.dart';
import 'package:safera/dye_penetrant/dye_2.dart';
import 'package:safera/hand_power/hand_power_1.dart';
import 'package:safera/hand_power/hand_power_2.dart';
import 'package:safera/heavy_power/heavy_power_2.dart';
import 'package:safera/login_screen/login_screen.dart';
import 'package:safera/magnatic_particle/magnatic_particle_2.dart';
import 'package:safera/provider/auth.dart';
import 'package:safera/screen/inspector_details_screen.dart';
import 'package:safera/screen/spalash_screen.dart';
import 'package:safera/sing_shacle/sing_shacle_2.dart';
import 'package:safera/tank_clean/tank_clean_2.dart';
import 'package:safera/tubing_drill/tubing_drill_2.dart';
import 'package:safera/ultra_sonic/ultra_sonic_2.dart';
import 'package:safera/visual_inspection/visual_inspection_2.dart';
import 'package:safera/visual_thread/visual_thread_2.dart';
import 'package:safera/visual_thread_drill/visual_thread_drill_2.dart';
import 'package:safera/load_test/load_test_2.dart';

var routes = <String, WidgetBuilder>{
  DashbordScreen.routeName: (BuildContext context) => DashbordScreen(),
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
  InspectionDetailScreen.routeName: (BuildContext context) =>
      InspectionDetailScreen()
  // '/product/deduct': (BuildContext context) => MaterialScanner(
  //       addProduct: false,
  //     ),
};

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider.value(
          value: Certificates(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, authData, _) => MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.teal,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: authData.isAuth
              ? DashbordScreen()
              : FutureBuilder(
                  future: authData.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : LoginScreen(),
                ),
          routes: routes,
        ),
      ),
    );
  }
}
