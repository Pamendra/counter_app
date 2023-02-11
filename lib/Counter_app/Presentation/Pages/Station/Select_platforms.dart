import 'package:counter_app/Counter_app/Presentation/Pages/Station/Station_Area/Select_Station_Area.dart';
import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

class TrainPlatform extends StatefulWidget {
  const TrainPlatform({Key? key}) : super(key: key);

  @override
  State<TrainPlatform> createState() => _TrainPlatformState();
}

class _TrainPlatformState extends State<TrainPlatform> {
  bool _value = false;
  bool _valu = false;
  bool _val = false;
  bool _va = false;
  bool _v = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Station()));
          },
          child: Container(
            padding: EdgeInsets.all(15),
            width: 50,
            height: 70,
            color: ColorConstants.appcolor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(width: 5,),
                Text('Back',style: TextStyle(color: Colors.white,fontSize: 21),)
              ],
            ),
          )),
      drawer: DrawerLogout(),
      appBar: AppBar(
        backgroundColor: ColorConstants.appcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
            children: [
                  Text('Select Platform',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorConstants.appcolor),),
              Padding(
                padding: const EdgeInsets.only(top:10,left: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
                height: 50,
              ),

              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Fluttertoast.showToast(msg: 'Train Searched');
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
