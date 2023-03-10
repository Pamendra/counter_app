import 'dart:developer';

import 'package:counter_app/Counter_app/Presentation/Pages/Station/Select_Station_Area.dart';
import 'package:counter_app/Counter_app/Presentation/Pages/Station/ServiceForm.dart';
import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

class TrainPlatform extends StatefulWidget {
  const TrainPlatform(bool se, {Key? key}) : super(key: key);

  @override
  State<TrainPlatform> createState() => _TrainPlatformState();
}

class _TrainPlatformState extends State<TrainPlatform> {
  bool p06 = false;
  bool p09 = false;
  bool p10 = false;
  bool p11 = false;
  bool p12 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundappColor,
      bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Station()));
          },
          child: Container(
            padding: EdgeInsets.all(15),
            width: 50,
            height: 60,
            color: ColorConstants.appcolor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Back',
                  style: TextStyle(color: Colors.white, fontSize: 21),
                )
              ],
            ),
          )),
      drawer: DrawerLogout(),
      appBar: AppBar(
        backgroundColor: ColorConstants.appcolor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Text(
              'Select Platform',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.appcolor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Platform 06',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 30,
                        toggleSize: 20,
                        value: p06,
                        borderRadius: 30.0,
                        padding: 2.0,
                        toggleBorder: Border.all(color: Colors.black),
                        activeToggleColor: Colors.blue,
                        inactiveToggleColor: Colors.grey,
                        activeColor: Colors.lightBlueAccent,
                        inactiveColor: Colors.black12,
                        onToggle: (val) {
                          setState(() {
                            p06 = val;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Platform 09',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 30,
                        toggleSize: 20,
                        value: p09,
                        borderRadius: 30.0,
                        padding: 2.0,
                        toggleBorder: Border.all(color: Colors.black),
                        activeToggleColor: Colors.blue,
                        inactiveToggleColor: Colors.grey,
                        activeColor: Colors.lightBlueAccent,
                        inactiveColor: Colors.black12,
                        onToggle: (val) {
                          setState(() {
                            p09 = val;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Platform 10',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 30,
                        toggleSize: 20,
                        value: p10,
                        borderRadius: 35.0,
                        padding: 2.0,
                        toggleBorder: Border.all(color: Colors.black),
                        activeToggleColor: Colors.blue,
                        inactiveToggleColor: Colors.grey,
                        activeColor: Colors.lightBlueAccent,
                        inactiveColor: Colors.black12,
                        onToggle: (val) {
                          setState(() {
                            p10 = val;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Platform 11',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 30,
                        toggleSize: 20,
                        value: p11,
                        borderRadius: 30.0,
                        padding: 2.0,
                        toggleBorder: Border.all(color: Colors.black),
                        activeToggleColor: Colors.blue,
                        inactiveToggleColor: Colors.grey,
                        activeColor: Colors.lightBlueAccent,
                        inactiveColor: Colors.black12,
                        onToggle: (val) {
                          setState(() {
                            p11 = val;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration:
                    const BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Platform 12',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 30,
                        toggleSize: 20,
                        value: p12,
                        borderRadius: 30.0,
                        padding: 2.0,
                        toggleBorder: Border.all(color: Colors.black),
                        activeToggleColor: Colors.blue,
                        inactiveToggleColor: Colors.grey,
                        activeColor: Colors.lightBlueAccent,
                        inactiveColor: Colors.black12,
                        onToggle: (val) {
                          setState(() {
                            p12 = val;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    if(p06==true || p09==true || p10==true || p11==true || p12==true){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ServiceForm()),
                      );
                    }else{
                      Fluttertoast.showToast(msg: 'please select platform');
                    }

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF31353D),
                  ),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 21),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
