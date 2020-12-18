import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashbordScreen extends StatefulWidget {
  DashbordScreen({Key key}) : super(key: key);
  static const routeName = '/dashboard';

  @override
  _DashbordScreenState createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  final String formattedDateTime =
      DateFormat('dd MMMM yyyy').format(DateTime.now()).toString();
  final String formattedDay = DateFormat('EEEEE').format(DateTime.now());

  int selectedTaskNumber = 0;
  var titleArray = ['In Task', 'In Progress', 'Closed Project', 'In Hold'];
  var countNumberArray = ['10', '31', '134', '15'];
  var menuImagesArray = [
    "assets/icons/LTI_icon.png",
    "assets/icons/MPI_icon.png",
    "assets/icons/SI_icon.png",
    "assets/icons/DPI_icon.png",
    "assets/icons/VI_icon.png",
    "assets/icons/HPLI_icon.png",
    "assets/icons/VTI_icon.png",
    "assets/icons/UI_icon.png",
    "assets/icons/TC_icon.png",
    "assets/icons/AT_icon.png",
    "assets/icons/VTIDP_icon.png",
    "assets/icons/TDP_icon.png",
    "assets/icons/BHAI_icon.png",
    "assets/icons/HWDP_icon.png",
  ];
  var menuNameArray = [
    "Load Test Inspection",
    "Magnetic Particle Inspection",
    "Sling/Shackle Inspection",
    "Dye Penetrant Inspection",
    "Visual Inspection",
    "Hand Powered Lifting Inspection",
    "Visual Thread Inspection",
    "Ultrasonic Inspection Inspection",
    "Tank Cleaning",
    "Air Test",
    "Visual Thread Inspection Drill Pipe",
    "Tubing Drill Pipe",
    "Bottom Hole Assembly Inspection",
    "Heavy Weight Drill Pipe",
  ];

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    List<Widget> createTaskButtons() {
      List<Widget> taskButtons = [];
      for (var i = 0; i < 4; i++) {
        Widget taskButton = InkWell(
          onTap: () {
            setState(() {
              selectedTaskNumber = i;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: (selectedTaskNumber == i)
                        ? AssetImage("assets/images/buttontask_selected.png")
                        : AssetImage("assets/images/buttontask_unselected.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16.0)),
            padding: EdgeInsets.only(left: 20),
            width: data.size.width / 4.7,
            height: data.size.width / 4.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titleArray[i],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: data.size.width * 0.022,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  countNumberArray[i],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: data.size.width * 0.052,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
        taskButtons.add(taskButton);
      }
      return taskButtons;
    }

    List<Widget> createTypeJob() {
      List<Widget> menuButtons = [];
      for (var i = 0; i < 14; i++) {
        Widget menuButton = InkWell(
          onTap: () {
            switch (i) {
              case 9:
                Navigator.of(context).pushNamed("/air_test/airtest_2");
                break;
              case 12:
                Navigator.of(context)
                    .pushNamed("/bottom_hole_inspection/bottom_hole_2");
                break;
              case 3:
                Navigator.of(context).pushNamed("/dye_penetrant/dye_2");
                break;
              case 5:
                Navigator.of(context).pushNamed("/hand_power/hand_power_2");
                break;
              case 13:
                Navigator.of(context).pushNamed("/heavy_power/heavy_power_2");
                break;
              case 1:
                Navigator.of(context)
                    .pushNamed("/magnatic_particle/magnatic_particle_2");
                break;
              case 2:
                Navigator.of(context).pushNamed("/sing_shacle/sing_shacle_2");
                break;
              case 8:
                Navigator.of(context).pushNamed("/tank_clean/tank_clean_2");
                break;
              case 11:
                Navigator.of(context).pushNamed("/tubing_drill/tubing_drill_2");
                break;
              case 7:
                Navigator.of(context).pushNamed("/ultra_sonic/ultra_sonic_2");
                break;
              case 4:
                Navigator.of(context)
                    .pushNamed("/visual_inspection/visual_inspection_2");
                break;
              case 6:
                Navigator.of(context)
                    .pushNamed("/visual_thread/visual_thread_2");
                break;
              case 10:
                Navigator.of(context)
                    .pushNamed("/visual_thread_drill/visual_thread_drill_2");
                break;
              case 0:
                Navigator.of(context).pushNamed("/load_test/load_test_2");
                break;
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[500],
                    // offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    spreadRadius: 1.0),
              ],
            ),
            width: data.size.width * 0.26,
            height: data.size.width * 0.28 * 1.2,
            padding: EdgeInsets.all(data.size.width * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cert No: CR001',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: data.size.width * 0.025,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  menuImagesArray[i],
                  width: data.size.width * 0.13,
                  height: data.size.width * 0.13,
                ),
                Text(
                  menuNameArray[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: data.size.width * 0.02,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Test Date: 12 April 2020',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: data.size.width * 0.02,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
        menuButtons.add(menuButton);
      }

      return menuButtons;
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_green.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              // user info and date
              margin: EdgeInsets.only(
                  left: data.size.width * 0.08,
                  top: data.size.height * 0.05,
                  right: data.size.width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formattedDateTime,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: data.size.width * 0.04,
                        ),
                      ),
                      Text(
                        formattedDay,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: data.size.width * 0.04,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        margin: EdgeInsets.only(right: 10.0),
                        child: Text(
                          'ID No: INS2245645',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: data.size.width * 0.016,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(3),
                        child: Image(
                          image: AssetImage("assets/images/icon_profile.png"),
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // My task
              width: data.size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 13, left: 5),
                    child: Text(
                      'My Tasks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: createTaskButtons(),
                  )
                ],
              ),
            ),
            // crete Job Screen
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              margin: EdgeInsets.only(top: 5),
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 22, bottom: 15),
              width: data.size.width,
              child: Text('My Tasks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: data.size.width * 0.03,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: GridView.count(
                  padding: EdgeInsets.all(30),
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 30,
                  crossAxisCount: 3,
                  children: createTypeJob(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class TaskButton extends StatefulWidget {
//   bool isSelected;
//   String title;
//   String countNumber;
//   int index;

//   TaskButton({this.index, this.isSelected, this.title, this.countNumber});

//   @override
//   TaskButtonState createState() => TaskButtonState();
// }

// class TaskButtonState extends State<TaskButton> {
//   bool isSelected = false;
//   String title = '';
//   String countNubmer = '';
//   int index = 0;

//   @override
//   void initState() {
//     super.initState();
//     index = widget.index;
//     isSelected = widget.isSelected;
//     title = widget.title;
//     countNubmer = widget.countNumber;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final data = MediaQuery.of(context);
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isSelected = true;
//         });
//       },
//       child: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: (isSelected)
//                     ? AssetImage("assets/images/buttontask_selected.png")
//                     : AssetImage("assets/images/buttontask_unselected.png"),
//                 fit: BoxFit.cover),
//             borderRadius: BorderRadius.circular(16.0)),
//         padding: EdgeInsets.only(left: 20),
//         width: data.size.width / 5,
//         height: data.size.width / 5,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: data.size.width * 0.022,
//                   fontWeight: FontWeight.bold),
//             ),
//             Text(
//               countNubmer,
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: data.size.width * 0.052,
//                   fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
