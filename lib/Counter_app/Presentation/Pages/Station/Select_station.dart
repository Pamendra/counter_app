
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';


import '../../../utils/colors_constants.dart';
import '../../../utils/drawer_logout.dart';


class EnterStation extends StatefulWidget {
  const EnterStation({Key? key}) : super(key: key);

  @override
  State<EnterStation> createState() => _EnterStationState();
}

class _EnterStationState extends State<EnterStation> {
  TextEditingController dateinput = TextEditingController();
  bool _value = false;
  bool _valu = false;
  bool _val = false;
  bool _va = false;
  bool _v = false;
  String? currentdatetime;
  String displayDate = "";
  DateTime? selectedDuration;
  String trainDate = "";

  @override
  void initState() {
    selectedDuration = DateTime.now();
    displayDate = DateFormat("EEEE, MMMM d, yyyy").format(selectedDuration!);
    trainDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(selectedDuration!);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerLogout(),

      backgroundColor: const Color(0xFFE8ECEF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF31353D),
      ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Container(
                    child:Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text('Please enter the station',style: TextStyle(fontSize: 21),),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top:50,bottom: 10),
                          child: Text('Please enter your station name'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            showCupertinoModalPopup(
                                context: context,
                                builder: (BuildContext builder) {
                                  return Container(
                                      height: MediaQuery.of(context)
                                          .copyWith()
                                          .size
                                          .height *
                                          0.40,
                                      color: const Color(0xFFE8ECEF),
                                      child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.date,
                                          minimumYear:
                                          DateTime.now().year - 5,
                                          maximumYear: DateTime.now().year,
                                          maximumDate: DateTime(
                                              DateTime.now().year,
                                              DateTime.now().month,
                                              DateTime.now().day),
                                          initialDateTime: DateTime(
                                              DateTime.now().year,
                                              DateTime.now().month,
                                              DateTime.now().day),
                                          onDateTimeChanged: (newDateTime) {
                                            setState(() {
                                              displayDate = DateFormat(
                                                  "EEEE, MMMM d, yyyy")
                                                  .format(newDateTime);
                                              trainDate = DateFormat(
                                                  "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                                  .format(newDateTime);
                                            });
                                          }));
                                });
                          },
                          child: Container(
                            width: 375,
                            height: 65 ,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    displayDate == ""
                                        ? trainDate.toString()
                                        : displayDate.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                  Icon(
                                    CupertinoIcons.calendar,
                                    color: ColorConstants.appcolor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                              labelStyle: const TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white
                                ),
                                borderRadius: BorderRadius.circular(11)
                              ),
                              labelText: 'Station_Area Name'
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'SouthEastern - SE',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height:80,
                                width: 80,
                                child: FlutterSwitch(
                                  width: 60.0,
                                  height:30,
                                  toggleSize: 20,
                                  value: _value ,
                                  borderRadius: 30.0,
                                  padding: 2.0,
                                  activeToggleColor: Colors.blue,
                                  inactiveToggleColor: Colors.grey,
                                  activeColor: Colors.lightBlueAccent,
                                  inactiveColor: Colors.black12,
                                  onToggle: (val) {
                                    setState(() {
                                      _value = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'West Midlands - LM',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height:80,
                                width: 80,
                                child: FlutterSwitch(
                                  width: 60.0,
                                  height: 30,
                                  toggleSize: 20,
                                  value: _valu ,
                                  borderRadius: 30.0,
                                  padding: 2.0,
                                  activeToggleColor: Colors.blue,
                                  inactiveToggleColor: Colors.grey,
                                  activeColor: Colors.lightBlueAccent,
                                  inactiveColor: Colors.black12,
                                  onToggle: (val) {
                                    setState(() {
                                      _valu = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Chiltern - CH',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height:80,
                                width: 80,
                                child: FlutterSwitch(

                                  width: 60.0,
                                  height: 30,
                                  toggleSize: 20,
                                  value: _val ,
                                  borderRadius: 35.0,
                                  padding: 2.0,
                                  activeToggleColor: Colors.blue,
                                  inactiveToggleColor: Colors.grey,
                                  activeColor: Colors.lightBlueAccent,
                                  inactiveColor: Colors.black12,
                                  onToggle: (val) {
                                    setState(() {
                                      _val = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'GA - LE',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height:80,
                                width: 80,
                                child: FlutterSwitch(
                                  width: 60.0,
                                  height: 30,
                                  toggleSize: 20,
                                  value: _va ,
                                  borderRadius: 30.0,
                                  padding: 2.0,
                                  activeToggleColor: Colors.blue,
                                  inactiveToggleColor: Colors.grey,
                                  activeColor: Colors.lightBlueAccent,
                                  inactiveColor: Colors.black12,
                                  onToggle: (val) {
                                    setState(() {
                                      _va = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Arriva Rail London - LO',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height:80,
                                width: 80,
                                child: FlutterSwitch(
                                  width: 60.0,
                                  height: 30,
                                  toggleSize: 20,
                                  value: _v ,
                                  borderRadius: 30.0,
                                  padding: 2.0,
                                  activeToggleColor: Colors.blue,
                                  inactiveToggleColor: Colors.grey,
                                  activeColor: Colors.lightBlueAccent,
                                  inactiveColor: Colors.black12,
                                  onToggle: (val) {
                                    setState(() {
                                      _v = val;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),




                        ElevatedButton(onPressed: (){
                    Fluttertoast.showToast(msg: 'Train Searched');
                  } ,style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF31353D),
                      ),
                       child:const Text('Search',style: TextStyle(fontSize: 21),)
                  )
               ]
              ),
            ),
          ]
          ),
            ),
         ),
       );
  }
}


