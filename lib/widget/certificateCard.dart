import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:safera/load_test/load_test_2.dart';

class CertificateCard extends StatelessWidget {
  final String certId;
  final String inspectionType;
  final String testDate;
  final String client;
  final String po;
  final String refNo;
  final String serialNo;
  final String locationOfTest;

  CertificateCard(
    this.certId,
    this.inspectionType,
    this.testDate,
    this.client,
    this.po,
    this.refNo,
    this.serialNo,
    this.locationOfTest,
  );

  // var menuImagesArray = [
  //   "assets/icons/LTI_icon.png",
  //   "assets/icons/MPI_icon.png",
  //   "assets/icons/SI_icon.png",
  //   "assets/icons/DPI_icon.png",
  //   "assets/icons/VI_icon.png",
  //   "assets/icons/HPLI_icon.png",
  //   "assets/icons/VTI_icon.png",
  //   "assets/icons/UI_icon.png",
  //   "assets/icons/TC_icon.png",
  //   "assets/icons/AT_icon.png",
  //   "assets/icons/VTIDP_icon.png",
  //   "assets/icons/TDP_icon.png",
  //   "assets/icons/BHAI_icon.png",
  //   "assets/icons/HWDP_icon.png",
  // ];
  // var menuNameArray = [
  //   "Load Test Inspection",
  //   "Magnetic Particle Inspection",
  //   "Sling/Shackle Inspection",
  //   "Dye Penetrant Inspection",
  //   "Visual Inspection",
  //   "Hand Powered Lifting Inspection",
  //   "Visual Thread Inspection",
  //   "Ultrasonic Inspection Inspection",
  //   "Tank Cleaning",
  //   "Air Test",
  //   "Visual Thread Inspection Drill Pipe",
  //   "Tubing Drill Pipe",
  //   "Bottom Hole Assembly Inspection",
  //   "Heavy Weight Drill Pipe",
  // ];

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            LoadTest2.routeName,
            arguments: [
              certId,
              inspectionType,
              testDate,
              client,
              po,
              refNo,
              serialNo,
              locationOfTest
            ],
          );
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
                'Cert No: $certId',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: data.size.width * 0.025,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/sefera_logo_tablet.png",
                width: data.size.width * 0.13,
                height: data.size.width * 0.13,
              ),
              Text(
                inspectionType ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: data.size.width * 0.02,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat('dd MMMM yyyy')
                    .format(DateTime.parse(testDate))
                    .toString(),
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: data.size.width * 0.02,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
