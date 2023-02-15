import 'dart:convert';

import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../../utils/colors_constants.dart';
import 'Boarding_Screen.dart';

class ServiceForm extends StatefulWidget {
  const ServiceForm({Key? key}) : super(key: key);

  @override
  State<ServiceForm> createState() => _ServiceFormState();
}

class _ServiceFormState extends State<ServiceForm> {
  TextEditingController timeinput = TextEditingController();
  List categoryItemlist = [];
  var _destinatiion;
var _departure;
var _platform;
var _head;

  Future getAllCategory() async {
    var baseUrl = "https://mocki.io/v1/325cf6ff-8890-43bc-a744-647db0a4be94";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    getAllCategory();
    timeinput.text = "";
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerLogout(),
      backgroundColor: const Color(0xFFE8ECEF),
      appBar: AppBar(
        backgroundColor: ColorConstants.appcolor,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text('Please Select The Service from the results below',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: ColorConstants.appcolor),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: DropdownButtonFormField(
                  icon: Icon(Icons.location_on),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                    filled: true,
                      fillColor: Colors.white,
                      labelText: 'Destination',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  items: categoryItemlist.map((item) {
                    return DropdownMenuItem(
                      value: item['name'].toString(),
                      child: Text(item['name'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      _destinatiion = newVal;
                    });
                  },
                  value: _destinatiion,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: DropdownButtonFormField(
                  icon: Icon(Icons.timelapse_outlined),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                    labelText: 'Departure Time',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),

                 // hint: Text('',style: TextStyle(fontSize: 16,color: Colors.black),),
                  items: categoryItemlist.map((item) {
                    return DropdownMenuItem(
                      value: item['name'].toString(),
                      child: Text(item['name'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      _departure = newVal;
                    });
                  },
                  value: _departure,
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: DropdownButtonFormField(
                  icon: Icon(Icons.train),
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                    labelText: 'Select Platform',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  items: categoryItemlist.map((item) {
                    return DropdownMenuItem(
                      value: item['name'].toString(),
                      child: Text(item['name'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      _platform = newVal;
                    });
                  },
                  value: _platform,
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                      labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Head Code',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  items: categoryItemlist.map((item) {
                    return DropdownMenuItem(
                      value: item['name'].toString(),
                      child: Text(item['name'].toString()),
                    );
                  }).toList(),
                  onChanged: (newVal) {
                    setState(() {
                      _head = newVal;
                    });
                  },
                  value: _head,
                ),
              ),
              SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 230,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Boarding()));
                      },style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.appcolor
                      )
                          , child: Text('Apply',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),))),
                  SizedBox(width: 10,),
                  Container(width: 120,height: 50,
                      child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.appcolor
                      )
                          , child: Text('Reset',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)))
                ],
              ),
            ],
          ),
        ),
      ),


    );
  }
}
