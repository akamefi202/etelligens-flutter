import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'dart:async';

import 'package:safera/widget/checkbox_title.dart';

class HandPower2 extends StatefulWidget {
  HandPower2({Key key}) : super(key: key);
  @override
  _HandPower2State createState() => _HandPower2State();
}

class _HandPower2State extends State<HandPower2> {
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

  bool remember_password = true;

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    CustomCheckBox checkBoxVisual = new CustomCheckBox(
      Icons.check,
      'Visual',
      onSelect: (isSelect) {
        setState(() {
          remember_password = isSelect;
        });
      },
      value: remember_password,
      width: 16,
      height: 16,
      selectedBackgroundColor: Colors.blue,
      selectedTextColor: Colors.black,
      notSelectedBackgroundColor: Colors.white,
      notSelectedTextColor: Color(0xFF979797),
    );

    CustomCheckBox checkBoxMPI = new CustomCheckBox(
      Icons.check,
      'MPI',
      onSelect: (isSelect) {
        setState(() {
          remember_password = isSelect;
        });
      },
      value: remember_password,
      width: 16,
      height: 16,
      selectedBackgroundColor: Colors.blue,
      selectedTextColor: Colors.black,
      notSelectedBackgroundColor: Colors.white,
      notSelectedTextColor: Color(0xFF979797),
    );

    CustomCheckBox checkBoxDPI = new CustomCheckBox(
      Icons.check,
      'DPI',
      onSelect: (isSelect) {
        setState(() {
          remember_password = isSelect;
        });
      },
      value: remember_password,
      width: 16,
      height: 16,
      selectedBackgroundColor: Colors.blue,
      selectedTextColor: Colors.black,
      notSelectedBackgroundColor: Colors.white,
      notSelectedTextColor: Color(0xFF979797),
    );

    CustomCheckBox checkBoxFunction = new CustomCheckBox(
      Icons.check,
      'Function',
      onSelect: (isSelect) {
        setState(() {
          remember_password = isSelect;
        });
      },
      value: remember_password,
      width: 16,
      height: 16,
      selectedBackgroundColor: Colors.blue,
      selectedTextColor: Colors.black,
      notSelectedBackgroundColor: Colors.white,
      notSelectedTextColor: Color(0xFF979797),
    );

    Widget itemAreaInspect = Container(
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
            //Hand chain
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
                  Text("Hand chain",
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
              ),
              Container(
                  width: data.size.width,
                  margin: EdgeInsets.only(left: 2, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: 80, height: 40, child: checkBoxVisual),
                      Container(width: 80, height: 40, child: checkBoxMPI),
                      Container(width: 80, height: 40, child: checkBoxDPI),
                      Container(width: 80, height: 40, child: checkBoxFunction)
                    ],
                  ))
            ])),
        Container(
            //Hand chain
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
                  Text("Hand Chain Wheel",
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
              ),
              Container(
                  width: data.size.width,
                  margin: EdgeInsets.only(left: 2, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: 80, height: 40, child: checkBoxVisual),
                      Container(width: 80, height: 40, child: checkBoxMPI),
                      Container(width: 80, height: 40, child: checkBoxDPI),
                      Container(width: 80, height: 40, child: checkBoxFunction)
                    ],
                  ))
            ])),
        Container(
            //Hand chain
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
                  Text("Cover",
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
              ),
              Container(
                  width: data.size.width,
                  margin: EdgeInsets.only(left: 2, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: 80, height: 40, child: checkBoxVisual),
                      Container(width: 80, height: 40, child: checkBoxMPI),
                      Container(width: 80, height: 40, child: checkBoxDPI),
                      Container(width: 80, height: 40, child: checkBoxFunction)
                    ],
                  ))
            ])),
      ],
    ));

    Widget itemCleaner = Container(
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Inspection Equipment",
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
              ),
              Container(
                  width: data.size.width,
                  margin: EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Table(
                          defaultColumnWidth: FixedColumnWidth(120.0),
                          border: TableBorder.all(
                              width: 1.0, color: Colors.grey[500]),
                          children: [
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Equipment",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Serial/batch Date",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Due Date",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Yoke",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey[800]),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "UV lights",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey[800]),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN ID",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN OO",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Coil",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey[800]),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN ID",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN OO",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                            ]),
                          ]))),
              Container(
                // add button
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey[500], width: 1.5)),
                height: data.size.width * 0.039,
                child: FlatButton(
                    onPressed: () => {
                          Navigator.of(context)
                              .pushReplacementNamed("/dashborad")
                        },
                    child: Text('+ Add Box',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: data.size.width * 0.019))),
              ),
            ])),
      ],
    ));

    Widget itemParticularEditWidget = Container(
        child: Column(
      children: [
        Container(
            //add description
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
                  Text("Description",
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
                  height: data.size.width * 0.1,
                  child: TextFormField(
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        hintText: "Write description..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //Size
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
                  Text("Size",
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
                        hintText: "Write here..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //Length
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
                  Text("Length",
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
                        hintText: "Write here..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //SWL
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
                  Text("SWL",
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
                        hintText: "Write here..",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      style: TextStyle(fontSize: data.size.width * 0.016)))
            ])),
        Container(
            //Specification
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
                  Text("Specification",
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
                        hintText: "Write here..",
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
        Container(
            //add Due Date
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
                  Text("Due Date",
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

    Widget itemDeveloper = Container(
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
            // AC - Active
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
                Text("AC - Active",
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
            //DC - Residual
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("DC - Residual",
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
            // DC - Continuos
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("DC - Continuos",
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
            )
          ],
        ),
        Container(
            //Longitudinal
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
                Text("Longitudinal",
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
            // Transverse
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Transverse",
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

    Widget itemTestMedium = Container(
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
            //Chemical Clean
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Chemical Clean",
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
            // Pressure Wash
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
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
        Container(
            // As Machined
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("As Machined",
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

    Widget itemMPIMedium = Container(
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
            //Contrast
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
                Text("Contrast",
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
            // Oil-Based Magnetic Article Suspension Aersosol
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Oil-Based Magnetic Article Suspension Aersosol",
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
            //Non-Fluorescent Inks
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Non-Fluorescent Inks",
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
            //Testing Medium
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Testing Medium",
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
              ),
              Container(
                  width: data.size.width,
                  margin: EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Table(
                          defaultColumnWidth: FixedColumnWidth(120.0),
                          border: TableBorder.all(
                              width: 1.0, color: Colors.grey[500]),
                          children: [
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Consumable",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Serial/batch Date",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Due Date",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Penetrant",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey[800]),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Developer",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey[800]),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN ID",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN OO",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                            ]),
                            TableRow(children: [
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Cleaner",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey[800]),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN ID",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                              Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "PIN OO",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  )),
                            ]),
                          ]))),
              Container(
                // add button
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey[500], width: 1.5)),
                height: data.size.width * 0.039,
                child: FlatButton(
                    onPressed: () => {
                          Navigator.of(context)
                              .pushReplacementNamed("/dashborad")
                        },
                    child: Text('+ Add Box',
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: data.size.width * 0.019))),
              ),
            ])),
        Container(
            //Particle concentration
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Particle concentration",
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
            // Black light intensity
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Black light intensity",
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
            // Light Intensity
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Light Intensity",
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
            // AMP/Gauss
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("AMP/Gauss",
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
            // Temperature

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Temperature",
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

    Widget itemDPIMethodPENETRANTS = Container(
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
            //visible
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
                Text("visible",
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
            //fluorescent
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("fluorescent",
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

    Widget itemDPIMethodCLEANER = Container(
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
            //solvent removable
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
                Text("solvent removable",
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
            //water washable
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("water washable",
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
            //post emulsifiable
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("post emulsifiable",
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

    Widget itemDPIMethodDEVELOPER = Container(
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
            //dry powder
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
                Text("dry powder",
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
            //solvent suspendable
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("solvent suspendable",
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
            //water based
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1, color: Colors.grey[300])),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("water based",
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
              //  Hand Powered Lifting Inspection
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
                              child: Text('Hand Powered Lifting Inspection',
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
                    // AREA INSPECTED
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
                            child: Text("AREA INSPECTED",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemAreaInspect
                      ],
                    )),
                Container(
                    // MPI - INSPECTION EQUIPMENT
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
                            child: Text("MPI - INSPECTION EQUIPMENT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemCleaner
                      ],
                    )),
                Container(
                    // MPI - METHOD
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
                            child: Text("MPI - METHOD",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemDeveloper
                      ],
                    )),
                Container(
                    // MPI - FIELD ORIENTATION
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
                            child: Text("MPI - FIELD ORIENTATION",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemCleaningMethod
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
                        itemTestMedium
                      ],
                    )),
                Container(
                    // MPI - MEDIUM
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
                            child: Text("MPI - MEDIUM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemMPIMedium
                      ],
                    )),
                Container(
                    //TESTING MEDIUM
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
                    // DPI METHOD & MEDIUM - PENETRANTS
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
                            child: Text("DPI METHOD & MEDIUM - PENETRANTS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemDPIMethodPENETRANTS
                      ],
                    )),
                Container(
                    // DPI METHOD & MEDIUM - CLEANER
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
                            child: Text("DPI METHOD & MEDIUM - CLEANER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemDPIMethodCLEANER
                      ],
                    )),
                Container(
                    // DPI METHOD & MEDIUM - DEVELOPERS
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
                            child: Text("DPI METHOD & MEDIUM - DEVELOPERS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemDPIMethodDEVELOPER
                      ],
                    )),
                Container(
                    // TEST RESULT NOTES
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
