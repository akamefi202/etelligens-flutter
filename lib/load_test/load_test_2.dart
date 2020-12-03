import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'dart:async';

class LoadTest2 extends StatefulWidget {
  LoadTest2({Key key}) : super(key: key);
  @override
  _LoadTest2State createState() => _LoadTest2State();
}

class _LoadTest2State extends State<LoadTest2> {
  int selectedTaskNumber = 0;
  String itemName, itemHour = '0', itemMinute = '0';
  List itemHours = ['0', '1', '2', '3'];
  List itemMinutes = ['0', '1', '2', '3'];
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

  // Declare this variable
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
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
            //Dimension
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
                  Text("Dimension",
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
            //Duration
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
                  Container(
                      margin: EdgeInsets.only(bottom: 6),
                      child: Text("Duration",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: data.size.width * 0.02,
                              fontWeight: FontWeight.bold))),
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
                      width: data.size.width * 0.1,
                      padding: EdgeInsets.only(left: 15, right: 3),
                      margin: EdgeInsets.only(right: 10),
                      child: DropdownButton(
                        underline: SizedBox(),
                        dropdownColor: Colors.grey[200],
                        elevation: 5,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        value: itemHour,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: data.size.width * 0.018),
                        onChanged: (value) {
                          setState(() {
                            itemHour = value;
                          });
                        },
                        items: itemHours.map((value) {
                          return DropdownMenuItem(
                              value: value,
                              child: Container(
                                  width: data.size.width * 0.028,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: data.size.width * 0.018),
                                  )));
                        }).toList(),
                      )),
                  Text('Hour',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: data.size.width * 0.018)),
                  Container(
                      // drop box
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.grey[200]),
                          borderRadius: BorderRadius.circular(5.0)),
                      height: data.size.width * 0.05,
                      width: data.size.width * 0.1,
                      padding: EdgeInsets.only(left: 15, right: 3),
                      margin: EdgeInsets.only(right: 10, left: 15),
                      child: DropdownButton(
                        underline: SizedBox(),
                        dropdownColor: Colors.grey[200],
                        elevation: 5,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        value: itemMinute,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: data.size.width * 0.018),
                        onChanged: (value) {
                          setState(() {
                            itemMinute = value;
                          });
                        },
                        items: itemMinutes.map((value) {
                          return DropdownMenuItem(
                              value: value,
                              child: Container(
                                  width: data.size.width * 0.028,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: data.size.width * 0.018),
                                  )));
                        }).toList(),
                      )),
                  Text('Minutes',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: data.size.width * 0.018))
                ],
              ),
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
            //Area
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
                  Text("Area",
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
            //Lifting Points
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
                  Text("Lifting Points",
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
            //Tare Mass
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
                  Text("Tare Mass",
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
            //Max. Pay Load
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
                  Text("Max. Pay Load",
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
            //Gross Weight
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
                  Text("Gross Weight",
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
            //Test Load
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
                  Text("Test Load",
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
            //Load Cell S/N
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
                  Text("Load Cell S/N",
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
            //Due Date
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
            //Welds
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
                  Text("Welds",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
        Container(
            //Pad Eyes / Lashing Points
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
                  Text("Pad Eyes / Lashing Points",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
        Container(
            //Door Closures
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
                  Text("Door Closures",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
        Container(
            //Structure
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
                  Text("Structure",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
      ],
    ));

    Widget itemVerticalInspact = Container(
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
            //Ground Level
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
                  Text("Ground Level",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
        Container(
            //Initial Impact
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
                  Text("Initial Impact",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
        Container(
            //Internal Test Mass
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
                  Text("Internal Test Mass",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
            ])),
        Container(
            //Angle
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
                  Text("Angle",
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
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 0,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Passed',
                  style: TextStyle(fontSize: 12.0),
                )
              ]),
              Row(children: [
                Container(
                    width: 35,
                    height: 35,
                    child: Radio(
                      value: 1,
                      activeColor: Colors.blue,
                      groupValue: selectedRadio,
                      onChanged: (val) {
                        setSelectedRadio(val);
                      },
                    )),
                Text(
                  'Failed',
                  style: TextStyle(fontSize: 12.0),
                )
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
              // Load Test Inspection
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
                                  color: Colors.red[900]),
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 7, bottom: 7),
                              margin: EdgeInsets.only(right: 14),
                              child: Text('Load Test Inspection',
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
                    // PRE TIP INSPECTION BEFORE AND AFTER TEST (VISUAL INSPECTION)
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
                            child: Text(
                                "PRE TIP INSPECTION BEFORE AND AFTER TEST (VISUAL INSPECTION)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemAreaInspect
                      ],
                    )),
                Container(
                    //  VERTICAL IMPACT TEST (DROP TEST / LOWERING TEST)
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
                            child: Text(
                                "VERTICAL IMPACT TEST (DROP TEST / LOWERING TEST)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 0.0172))),
                        itemVerticalInspact
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
