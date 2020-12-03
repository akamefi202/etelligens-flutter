import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Dye1 extends StatefulWidget {
  Dye1({Key key}) : super(key: key);
  @override
  _Dye1State createState() => _Dye1State();
}

class _Dye1State extends State<Dye1> {
  int selectedTaskNumber = 0;
  String itemName;
  List itemNames = ['A', 'B', 'C', 'D'];

  List<Widget> _getAttachmentStates() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      Widget item = Container(
          margin: EdgeInsets.only(top: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/icons/jpeg_icon.png"),
                width: 32.0,
                height: 32.0,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Img 9371671838641.jpg',
                            style: TextStyle(color: Colors.grey, fontSize: 14)),
                        Text('78%',
                            style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ]),
                  // Container(
                  //   child: LinearProgressIndicator(
                  //     backgroundColor: Colors.red,
                  //     valueColor: AlwaysStoppedAnimation<Color>(
                  //       Colors.amber,
                  //     ),
                  //     value: 0.8,
                  //   ),
                  // )
                ],
              )
            ],
          ));
      list.add(item);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_green.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            // header
            margin: EdgeInsets.only(
                left: data.size.width * 0.05,
                top: data.size.height * 0.06,
                bottom: 10,
                right: data.size.width * 0.05),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                      // back arrow button
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 42.0,
                      )),
                  Container(
                    // help button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.white, width: 1)),
                    padding: EdgeInsets.only(left: 12, right: 12),
                    width: data.size.width * 0.15,
                    height: data.size.width * 0.05,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('help?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ]),
          ),
          Container(
              // airtest info rect
              width: data.size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0)),
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Container(
                      // title
                      margin: EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.lime[900]),
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 7, bottom: 7),
                              margin: EdgeInsets.only(right: 14),
                              child: Text('Dye penetrant inspection',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: data.size.width * 0.018,
                                    fontWeight: FontWeight.bold,
                                  ))),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Colors.black),
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 7, bottom: 7),
                              child:
                                  Text('Certificate No : CITKSB-QF/20-MPI0513',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: data.size.width * 0.018,
                                        fontWeight: FontWeight.bold,
                                      )))
                        ],
                      )),
                  Row(
                    // Air test description part
                    children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Container(
                                margin:
                                    EdgeInsets.only(bottom: 3, left: 8, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Client: ",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: data.size.width * 0.024),
                                    ),
                                    Text(
                                      "Geowell Sdn Bhd",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: data.size.width * 0.024,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(bottom: 3, left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Ref. Number : ",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: data.size.width * 0.024),
                                    ),
                                    Text(
                                      "00001",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: data.size.width * 0.024,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(bottom: 3, left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Location of Test: ",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: data.size.width * 0.024),
                                    ),
                                    Text(
                                      "Careion Yard",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: data.size.width * 0.024,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )),
                          ])),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Container(
                                margin:
                                    EdgeInsets.only(bottom: 3, left: 8, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "P.O: ",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: data.size.width * 0.024),
                                    ),
                                    Text(
                                      "182619",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: data.size.width * 0.024,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(bottom: 3, left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Serial No : ",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: data.size.width * 0.024),
                                    ),
                                    Text(
                                      "SPSB 08",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: data.size.width * 0.024,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(bottom: 3, left: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Cert. No: ",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: data.size.width * 0.024),
                                    ),
                                    Text(
                                      "CITKSB-QF/20-MPI0513",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: data.size.width * 0.024,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                )),
                          ])),
                    ],
                  )
                ],
              )),
          Container(
              // Edit Rect
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              margin: EdgeInsets.only(top: 15),
              padding:
                  EdgeInsets.only(left: 20, right: 12, top: 28, bottom: 15),
              width: data.size.width,
              child: Column(children: [
                Row(
                  // Controll top buttons
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // preview cert button
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(color: Colors.blue, width: 1)),
                      margin: EdgeInsets.only(right: 6),
                      height: data.size.width * 0.042,
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .pushReplacementNamed("/dashborad")
                              },
                          child: Text('Preview Cert',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: data.size.width * 0.020))),
                    ),
                    Container(
                      // Edit button
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(color: Colors.blue, width: 1)),
                      margin: EdgeInsets.only(right: 6),
                      height: data.size.width * 0.042,
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .pushNamed("/dye_penetrant/dye_2")
                              },
                          child: Text('Edit',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: data.size.width * 0.020))),
                    ),
                    Container(
                      // Save button
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(color: Colors.blue, width: 1)),
                      margin: EdgeInsets.only(right: 6),
                      height: data.size.width * 0.042,
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .pushReplacementNamed("/dashborad")
                              },
                          child: Text('Save',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: data.size.width * 0.020))),
                    ),
                    Container(
                      // Submit button
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.orange,
                      ),
                      margin: EdgeInsets.only(right: 6),
                      height: data.size.width * 0.042,
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.of(context)
                                    .pushReplacementNamed("/dashborad")
                              },
                          child: Text('Submit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: data.size.width * 0.020))),
                    ),
                  ],
                ),
                Container(
                    // rect particular
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 12),
                            child: Text("ITEM PARTICULAR",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.4,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.32,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                            Container(
                              // add button
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue),
                              height: data.size.width * 0.045,
                              width: data.size.width * 0.1,
                              margin: EdgeInsets.only(right: 25),
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.of(context)
                                            .pushReplacementNamed("/dashborad")
                                      },
                                  child: Text('Add',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: data.size.width * 0.020))),
                            ),
                            Text('* Can select more than one item particluar',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: data.size.width * 0.015))
                          ],
                        ),
                      ],
                    )),
                Container(
                    // MEDIUM - PENETRANTS
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("MEDIUM - PENETRANTS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.4,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.32,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                            Container(
                              // add button
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue),
                              height: data.size.width * 0.045,
                              width: data.size.width * 0.1,
                              margin: EdgeInsets.only(right: 25),
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.of(context)
                                            .pushReplacementNamed("/dashborad")
                                      },
                                  child: Text('Add',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: data.size.width * 0.020))),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    // MEDIUM - DPI
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("MEDIUM - DPI",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.4,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.32,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                            Container(
                              // add button
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue),
                              height: data.size.width * 0.045,
                              width: data.size.width * 0.1,
                              margin: EdgeInsets.only(right: 25),
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.of(context)
                                            .pushReplacementNamed("/dashborad")
                                      },
                                  child: Text('Add',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: data.size.width * 0.020))),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    // MEDIUM - DEVELOPERS
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("MEDIUM - DEVELOPERS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.4,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.32,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                            Container(
                              // add button
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue),
                              height: data.size.width * 0.045,
                              width: data.size.width * 0.1,
                              margin: EdgeInsets.only(right: 25),
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.of(context)
                                            .pushReplacementNamed("/dashborad")
                                      },
                                  child: Text('Add',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: data.size.width * 0.020))),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    // CLEANING METHOD
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("CLEANING METHOD",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.4,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.32,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                            Container(
                              // add button
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue),
                              height: data.size.width * 0.045,
                              width: data.size.width * 0.1,
                              margin: EdgeInsets.only(right: 25),
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.of(context)
                                            .pushReplacementNamed("/dashborad")
                                      },
                                  child: Text('Add',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: data.size.width * 0.020))),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    //  TESTING MEDIUM
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("TESTING MEDIUM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.4,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.32,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                            Container(
                              // add button
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.blue),
                              height: data.size.width * 0.045,
                              width: data.size.width * 0.1,
                              margin: EdgeInsets.only(right: 25),
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.of(context)
                                            .pushReplacementNamed("/dashborad")
                                      },
                                  child: Text('Add',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: data.size.width * 0.020))),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                    //  TEST RESULT NOTES
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("TEST RESULT NOTES",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.7,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.62,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                          ],
                        ),
                      ],
                    )),
                Container(
                    //  REMARKS
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("REMARKS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                // drop box
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey[200]),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: data.size.width * 0.05,
                                width: data.size.width * 0.7,
                                padding: EdgeInsets.only(left: 15, right: 3),
                                margin: EdgeInsets.only(right: 20, left: 15),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Select"),
                                  dropdownColor: Colors.grey[200],
                                  elevation: 5,
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 20,
                                  value: itemName,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.018),
                                  onChanged: (value) {
                                    setState(() {
                                      itemName = value;
                                    });
                                  },
                                  items: itemNames.map((value) {
                                    return DropdownMenuItem(
                                        value: value,
                                        child: Container(
                                            width: data.size.width * 0.62,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      data.size.width * 0.018),
                                            )));
                                  }).toList(),
                                )),
                          ],
                        ),
                      ],
                    )),
                Container(
                    // rect attachment
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(0.4, 0.4),
                              blurRadius: 1.0,
                              spreadRadius: 1.0),
                        ],
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(top: 18, left: 5, right: 5),
                    child: Column(
                      children: [
                        Container(
                            // title
                            width: data.size.width,
                            decoration: BoxDecoration(
                              color: Colors.teal[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.only(
                                top: 12, bottom: 6, left: 15, right: 10),
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text("ATTACHMENT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        DottedBorder(
                            color: Colors.grey,
                            strokeWidth: 1,
                            radius: Radius.circular(20),
                            dashPattern: [5, 5],
                            customPath: (size) {
                              return Path()
                                ..moveTo(0, 0)
                                ..lineTo(size.width, 0)
                                ..lineTo(size.width, size.height)
                                ..lineTo(0, size.height)
                                ..lineTo(0, 0);
                            },
                            child: Container(
                                width: data.size.width * 0.7,
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Select Your Files Here",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: data.size.width * 0.018)),
                                    Container(
                                      // add button
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: Colors.blue),
                                      height: data.size.width * 0.05,
                                      width: data.size.width * 0.18,
                                      margin:
                                          EdgeInsets.only(right: 25, left: 30),
                                      child: FlatButton(
                                          onPressed: () => {
                                                Navigator.of(context)
                                                    .pushReplacementNamed(
                                                        "/dashborad")
                                              },
                                          child: Text('Upload Image',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: data.size.width *
                                                      0.020))),
                                    ),
                                  ],
                                ))),
                        Container(
                            // rect PRESSURE STAGE AND HOLDING TIME SCHEDULE
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[400],
                                      offset: Offset(0.4, 0.4),
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0),
                                ],
                                borderRadius: BorderRadius.circular(8.0)),
                            margin: EdgeInsets.only(top: 18),
                            padding: EdgeInsets.only(bottom: 30),
                            child: Column(
                              children: _getAttachmentStates(),
                            )),
                      ],
                    )),
              ])),
        ],
      ),
    )));
  }
}
