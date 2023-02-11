

import 'package:counter_app/Counter_app/Presentation/Pages/Station/Select_platforms.dart';
import 'package:counter_app/Counter_app/Presentation/Pages/Station/Station_Area/Select_Station_Area.dart';
import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';


class AreaStation extends StatefulWidget {
  const AreaStation({Key? key}) : super(key: key);

  @override
  State<AreaStation> createState() => _AreaStationState();
}

class _AreaStationState extends State<AreaStation> {
  bool _value = false;
  bool _valu = false;
  bool _val = false;
  bool _va = false;
  bool _v = false;


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
        child: Column(
        children: [
        Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
    ),

    Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
    child: Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
    ),

    Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
    child: Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
    ),

    Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
    child: Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
    ),

    Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
    child: Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
    ),


    SizedBox(
        height: 100,
    ),

    Container(
        height: 50,
        width: 200,
        child: ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TrainPlatform()),
          );
        } ,style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF31353D),
        ),
        child:const Text('Confirm',style: TextStyle(fontSize: 21),)
        ),
    )
    ]
        ),
      ),
    );
  }
}
