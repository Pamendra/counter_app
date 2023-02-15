import 'package:counter_app/Counter_app/Presentation/Pages/Station/Select_platforms.dart';
import 'package:counter_app/Counter_app/Presentation/Pages/Station/Select_Station_Area.dart';
import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AreaStation extends StatefulWidget {
  const AreaStation({Key? key}) : super(key: key);

  @override
  State<AreaStation> createState() => _AreaStationState();
}

class _AreaStationState extends State<AreaStation> {
  bool se = false;
  bool lm = false;
  bool ch = false;
  bool le = false;
  bool lo = false;
  var station1 = 'SouthEastern - SE';var station2 = 'West Midlands - LM';var station3 = 'Chiltern - CH';var station4 ='GA - LE' ;var station5 = 'Arriva Rail London - LO' ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundappColor,
      drawer: DrawerLogout(),
      appBar: AppBar(
        backgroundColor: ColorConstants.appcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    station1,
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
                      value: se,
                      borderRadius:30.0,
                      padding: 2.0,
                      toggleBorder: Border.all(color: Colors.black),
                      activeToggleColor: Colors.blue,
                      inactiveToggleColor: Colors.grey,
                      activeColor: Colors.lightBlueAccent,
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          se = val;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    station2,
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
                      value: lm,
                      borderRadius: 30.0,
                      padding: 2.0,
                      toggleBorder: Border.all(color: Colors.black),
                      activeToggleColor: Colors.blue,
                      inactiveToggleColor: Colors.grey,
                      activeColor: Colors.lightBlueAccent,
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          lm = val;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    station3,
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
                      value: ch,
                      borderRadius: 35.0,
                      padding: 2.0,
                      toggleBorder: Border.all(color: Colors.black),
                      activeToggleColor: Colors.blue,
                      inactiveToggleColor: Colors.grey,
                      activeColor: Colors.lightBlueAccent,
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          ch = val;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    station4,
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
                      value: le,
                      borderRadius: 30.0,
                      padding: 2.0,
                      toggleBorder: Border.all(color: Colors.black),
                      activeToggleColor: Colors.blue,
                      inactiveToggleColor: Colors.grey,
                      activeColor: Colors.lightBlueAccent,
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          le = val;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                   station5,
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
                      value: lo,
                      borderRadius: 30.0,
                      padding: 2.0,
                      toggleBorder: Border.all(color: Colors.black),
                      activeToggleColor: Colors.blue,
                      inactiveToggleColor: Colors.grey,
                      activeColor: Colors.lightBlueAccent,
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          lo = val;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                if(se == true || lm==true || ch==true || le==true || lo==true){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrainPlatform(se)),
                );
                }else{
                  Fluttertoast.showToast(msg: 'please select station');
                }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF31353D),
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(fontSize: 21),
                )),
          ),
        ]),
      ),
    );
  }
}
