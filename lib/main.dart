import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
import 'package:tablet/login_screen/login_screen.dart';
import 'package:tablet/magnatic_particle/magnatic_particle_2.dart';
import 'package:tablet/provider/auth.dart';
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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Auth(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.teal,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LoginScreen(),
          routes: routes,
        ));
  }
}
