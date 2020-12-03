import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'dart:async';

class HeavyPower2 extends StatefulWidget {
  HeavyPower2({Key key}) : super(key: key);
  @override
  _HeavyPower2State createState() => _HeavyPower2State();
}

class _HeavyPower2State extends State<HeavyPower2> {
  int selectedTaskNumber = 0;
  String itemName;
  List itemNames = ['A', 'B', 'C', 'D'];

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2018, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Img 9371671334234 8641.jpg',
                            style: TextStyle(color: Colors.grey, fontSize: 14)),
                        SizedBox(width: 20),
                        Text('78%',
                            style:
                                TextStyle(color: Colors.black, fontSize: 14)),
                      ]),
                  Container(
                    width: 250,
                    margin: EdgeInsets.only(top: 10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.blue,
                      ),
                      value: 0.8,
                    ),
                  )
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

    Widget itemParticularEditWidget = Container(
        child: Column(
      children: [
        Container(
            //add Material
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Material",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.02,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.034,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(top: 6),
                  child: TextFormField(
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        hintText: "Write dimension..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //add Type Of Tool
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Type Of Tool",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.02,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.034,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(top: 6),
                  child: TextFormField(
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        hintText: "Write dimension..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //add CONN type (PIN)
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("CONN type (PIN)",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.02,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.034,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(top: 6),
                  child: TextFormField(
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        hintText: "Write dimension..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //add CONN Type ( BOX)
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("CONN Type ( BOX)",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.02,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.034,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: EdgeInsets.only(top: 6),
                  child: TextFormField(
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        hintText: "Write dimension..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //add Test Date
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Test Date",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.02,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.034,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(8.0)),
                      margin: EdgeInsets.only(top: 6),
                      padding: EdgeInsets.only(left: 30, top: 5, bottom: 5),
                      width: data.size.width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("${selectedDate.toLocal()}".split(' ')[0],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: data.size.width * 0.023,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(width: 20),
                          Image(
                            image: AssetImage("assets/icons/calendar_icon.png"),
                            width: 26.0,
                            height: 26.0,
                            fit: BoxFit.fitHeight,
                          ),
                        ],
                      )))
            ])),
      ],
    ));

    Widget itemScopeOfWork = Container(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                // drop box
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey[200]),
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
                      color: Colors.black, fontSize: data.size.width * 0.018),
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
                                  fontSize: data.size.width * 0.018),
                            )));
                  }).toList(),
                )),
            Container(
              // add button
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.blue),
              height: data.size.width * 0.045,
              width: data.size.width * 0.1,
              margin: EdgeInsets.only(right: 25),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacementNamed("/dashborad")
                      },
                  child: Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: data.size.width * 0.020))),
            )
          ],
        ),
        Container(
            //air Magnetic Particle Inspection
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Magnetic Particle Inspection",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            //air Magnetic Particle Inspection
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Liqiup Penetrant Inspection",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            // Visual Connection
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Visual Connection",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
      ],
    ));

    Widget itemSpecification = Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: data.size.width,
          decoration: BoxDecoration(color: Colors.grey[700]),
          padding: EdgeInsets.symmetric(vertical: 6),
          margin: EdgeInsets.only(bottom: 2, left: 20, right: 20),
          child: Text('PIN END',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: data.size.width * 0.02)),
        ),
        Container(
            width: data.size.width,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Table(
                    defaultColumnWidth: FixedColumnWidth(80.0),
                    border:
                        TableBorder.all(width: 1.0, color: Colors.grey[500]),
                    children: [
                      TableRow(children: [
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "S/N",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN ID",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN OO",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "CYL DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "NOSE DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "BEV DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "SRG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.black),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "STG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                      ]),
                      TableRow(children: [
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "S/N",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN ID",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN OO",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "CYL DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "NOSE DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "BEV DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "SRG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "STG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                      ]),
                      TableRow(children: [
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "S/N",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN ID",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN OO",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "CYL DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "NOSE DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "BEV DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "SRG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "STG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                      ]),
                      TableRow(children: [
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "S/N",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN ID",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN OO",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "CYL DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "NOSE DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "BEV DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "SRG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "STG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                      ]),
                      TableRow(children: [
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "S/N",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN ID",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN OO",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "CYL DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "NOSE DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "BEV DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "SRG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "STG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                      ]),
                      TableRow(children: [
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "S/N",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN ID",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "PIN OO",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "CYL DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "NOSE DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "BEV DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "SRG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                        Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: Text(
                              "STG DIA",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )),
                      ]),
                    ]))),
        Container(
          // add button
          margin: EdgeInsets.only(top: 10, left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey[500], width: 1.5)),
          height: data.size.width * 0.039,
          child: FlatButton(
              onPressed: () =>
                  {Navigator.of(context).pushReplacementNamed("/dashborad")},
              child: Text('+ Add Box',
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: data.size.width * 0.019))),
        ),
      ],
    ));

    Widget itemMagnetic = Container(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                // drop box
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey[200]),
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
                      color: Colors.black, fontSize: data.size.width * 0.018),
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
                                  fontSize: data.size.width * 0.018),
                            )));
                  }).toList(),
                )),
            Container(
              // add button
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.blue),
              height: data.size.width * 0.045,
              width: data.size.width * 0.1,
              margin: EdgeInsets.only(right: 25),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacementNamed("/dashborad")
                      },
                  child: Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: data.size.width * 0.020))),
            ),
          ],
        ),
        Container(
            //Active
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Active",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            //Residual
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Residual",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            //Continuos
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Continuos",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
      ],
    ));

    Widget itemMagneticField = Container(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                // drop box
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey[200]),
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
                      color: Colors.black, fontSize: data.size.width * 0.018),
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
                                  fontSize: data.size.width * 0.018),
                            )));
                  }).toList(),
                )),
            Container(
              // add button
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.blue),
              height: data.size.width * 0.045,
              width: data.size.width * 0.1,
              margin: EdgeInsets.only(right: 25),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacementNamed("/dashborad")
                      },
                  child: Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: data.size.width * 0.020))),
            ),
          ],
        ),
        Container(
            //Longitunal
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Longitunal",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            //Circular
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Circular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
      ],
    ));

    Widget itemCleaningMethod = Container(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                // drop box
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey[200]),
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
                      color: Colors.black, fontSize: data.size.width * 0.018),
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
                                  fontSize: data.size.width * 0.018),
                            )));
                  }).toList(),
                )),
            Container(
              // add button
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.blue),
              height: data.size.width * 0.045,
              width: data.size.width * 0.1,
              margin: EdgeInsets.only(right: 25),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacementNamed("/dashborad")
                      },
                  child: Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: data.size.width * 0.020))),
            ),
          ],
        ),
        Container(
            //Buffing
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Buffing",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            //Solvent Clean
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Solvent Clean",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
        Container(
            //Pressure Wash
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Pressure Wash",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: data.size.width * 0.02,
                        fontWeight: FontWeight.bold)),
                Container(
                  // delete button
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red[400]),
                  width: data.size.width * 0.125,
                  height: data.size.width * 0.035,
                  child: FlatButton(
                      onPressed: () => {
                            Navigator.of(context)
                                .pushReplacementNamed("/dashborad")
                          },
                      child: Text('Delete',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 0.020))),
                ),
              ],
            )),
      ],
    ));

    Widget itemTypeOfInspection = Container(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                // drop box
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey[200]),
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
                      color: Colors.black, fontSize: data.size.width * 0.018),
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
                                  fontSize: data.size.width * 0.018),
                            )));
                  }).toList(),
                )),
            Container(
              // add button
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.blue),
              height: data.size.width * 0.045,
              width: data.size.width * 0.1,
              margin: EdgeInsets.only(right: 25),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacementNamed("/dashborad")
                      },
                  child: Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: data.size.width * 0.020))),
            )
          ],
        ),
        Container(
            //AC Yoke
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("AC Yoke",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.018,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.035,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('S/N : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: EdgeInsets.only(top: 13, bottom: 13, right: 20),
                        width: data.size.width * 0.3,
                        child: TextFormField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              hintText: "",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                            ),
                            style:
                                TextStyle(fontSize: data.size.width * 0.018))),
                    Text('Due Date : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(8.0)),
                            padding:
                                EdgeInsets.only(left: 30, top: 2, bottom: 2),
                            width: data.size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${selectedDate.toLocal()}".split(' ')[0],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.023,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(width: 30),
                                Image(
                                  image: AssetImage(
                                      "assets/icons/calendar_icon.png"),
                                  width: 26.0,
                                  height: 26.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ],
                            )))
                  ]),
            ])),
        Container(
            //Black Light
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Black Light",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.018,
                          fontWeight: FontWeight.bold)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.035,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('S/N : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: EdgeInsets.only(top: 13, bottom: 13, right: 20),
                        width: data.size.width * 0.3,
                        child: TextFormField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              isDense: true,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              hintText: "",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                            ),
                            style:
                                TextStyle(fontSize: data.size.width * 0.018))),
                    Text('Due Date : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(8.0)),
                            padding:
                                EdgeInsets.only(left: 30, top: 2, bottom: 2),
                            width: data.size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${selectedDate.toLocal()}".split(' ')[0],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.023,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(width: 30),
                                Image(
                                  image: AssetImage(
                                      "assets/icons/calendar_icon.png"),
                                  width: 26.0,
                                  height: 26.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ],
                            )))
                  ]),
            ])),
      ],
    ));

    Widget itemTestingMedium = Container(
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                // drop box
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey[200]),
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
                      color: Colors.black, fontSize: data.size.width * 0.018),
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
                                  fontSize: data.size.width * 0.018),
                            )));
                  }).toList(),
                )),
            Container(
              // add button
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0), color: Colors.blue),
              height: data.size.width * 0.045,
              width: data.size.width * 0.1,
              margin: EdgeInsets.only(right: 25),
              child: FlatButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacementNamed("/dashborad")
                      },
                  child: Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: data.size.width * 0.020))),
            )
          ],
        ),
        Container(
            //Partical concentration
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Partical concentration",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.018,
                          fontWeight: FontWeight.normal)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.035,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Batch No : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: EdgeInsets.only(top: 13, bottom: 13, right: 20),
                        width: data.size.width * 0.3,
                        child: TextFormField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              isDense: true,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              hintText: "",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                            ),
                            style:
                                TextStyle(fontSize: data.size.width * 0.018))),
                    Text('Due Date : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(8.0)),
                            padding:
                                EdgeInsets.only(left: 30, top: 2, bottom: 2),
                            width: data.size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${selectedDate.toLocal()}".split(' ')[0],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.023,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(width: 30),
                                Image(
                                  image: AssetImage(
                                      "assets/icons/calendar_icon.png"),
                                  width: 26.0,
                                  height: 26.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ],
                            )))
                  ]),
            ])),
        Container(
            //BLC Intensity
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("BLC Intensity",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: data.size.width * 0.018,
                          fontWeight: FontWeight.normal)),
                  Container(
                    // delete button
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red[400]),
                    width: data.size.width * 0.125,
                    height: data.size.width * 0.035,
                    child: FlatButton(
                        onPressed: () => {
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashborad")
                            },
                        child: Text('Delete',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: data.size.width * 0.020))),
                  ),
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('S/N : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(8.0)),
                        margin: EdgeInsets.only(top: 13, bottom: 13, right: 20),
                        width: data.size.width * 0.3,
                        child: TextFormField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              isDense: true,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              hintText: "",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                            ),
                            style:
                                TextStyle(fontSize: data.size.width * 0.018))),
                    Text('Due Date : ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                            fontSize: data.size.width * 0.018)),
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(8.0)),
                            padding:
                                EdgeInsets.only(left: 30, top: 2, bottom: 2),
                            width: data.size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("${selectedDate.toLocal()}".split(' ')[0],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: data.size.width * 0.023,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(width: 30),
                                Image(
                                  image: AssetImage(
                                      "assets/icons/calendar_icon.png"),
                                  width: 26.0,
                                  height: 26.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ],
                            )))
                  ]),
            ])),
      ],
    ));

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
              //  Heavy Weight drill pipe
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
                              child: Text('Heavy Weight drill pipe',
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
                                    .pushReplacementNamed("/dashborad")
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
                        itemParticularEditWidget
                      ],
                    )),
                Container(
                    // rect  SCOPE OF WORK
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
                            child: Text("SCOPE OF WORK",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemScopeOfWork
                      ],
                    )),
                Container(
                    // rect SPECIFICATION
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
                            child: Text("SPECIFICATION",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemSpecification
                      ],
                    )),
                Container(
                    // rect TYPE OF INSPECTION
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
                            child: Text("TYPE OF INSPECTION",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemTypeOfInspection
                      ],
                    )),
                Container(
                    // rect MAGNETIC TECHNIQUE
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
                            child: Text("MAGNETIC TECHNIQUE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemMagnetic
                      ],
                    )),
                Container(
                    // rect MAGNETIC FIELD
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
                            child: Text("MAGNETIC FIELD",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemMagneticField
                      ],
                    )),
                Container(
                    // rect CLEANING METHOD
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
                        itemCleaningMethod
                      ],
                    )),
                Container(
                    // rect TESTING MEDIUM
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
                        itemTestingMedium
                      ],
                    )),
                Container(
                    // rect TESTING MEDIUM
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
                        itemSpecification
                      ],
                    )),
                Container(
                    // rect TEST RESULT NOTES
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
                    // rect remarks
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
                            child: Text("REMARS",
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
