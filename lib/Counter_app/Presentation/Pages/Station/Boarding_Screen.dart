import 'dart:developer';

import 'package:counter_app/Counter_app/Presentation/Pages/Station/Search_Station.dart';
import 'package:counter_app/Counter_app/Presentation/Pages/Station/ServiceForm.dart';
import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boarding extends StatefulWidget {
  const Boarding({Key? key}) : super(key: key);

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundappColor,
      drawer: DrawerLogout(),
      appBar: AppBar(
        backgroundColor: ColorConstants.appcolor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20),
            child: Text('BoardingScreen Option',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.only(top:50,left: 20,right: 20,bottom: 20),
              child: Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text('BoardingScreenING',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Container(
                        child: Row(
                      children: [
                        index1!=0?
                        InkWell(
                            child: Icon(Icons.remove_circle,size: 40,),
                        onTap: ()=> setState(()=> index1--)):Container(
                          child: Icon(Icons.remove_circle,size: 40,),
                        ),
                        SizedBox(width: 10,),
                        Text(index1.toString(),style: TextStyle(fontSize: 19),),
                        SizedBox(width: 10,),
                        InkWell(child: Icon(Icons.add_circle,size: 40,),
                        onTap: ()=> setState(()=> index1++)),
                      ],
                    )),

                  ],
                ),
              ),
            ),
SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ALIGHTING',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Container(
                        child: Row(
                          children: [
                            index2!=0?
                            InkWell(
                                child: Icon(Icons.remove_circle,size: 40,),
                                onTap: ()=> setState(()=> index2--)):Container(
                              child: Icon(Icons.remove_circle,size: 40,),
                            ),
                            SizedBox(width: 10,),
                            Text(index2.toString(),style: TextStyle(fontSize: 19),),
                            SizedBox(width: 10,),
                            InkWell(child: Icon(Icons.add_circle,size: 40,),
                                onTap: ()=> setState(()=> index2++)),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('OTD',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Container(
                        child: Row(
                          children: [
                            index3!=0?
                            InkWell(
                                child: Icon(Icons.remove_circle,size: 40,),
                                onTap: ()=> setState(()=> index3--)):Container(
                              child: Icon(Icons.remove_circle,size: 40,),
                            ),
                            SizedBox(width: 10,),
                            Text(index3.toString(),style: TextStyle(fontSize: 19),),
                            SizedBox(width: 10,),
                            InkWell(child: Icon(Icons.add_circle,size: 40,),
                                onTap: ()=> setState(()=> index3++)),
                          ],
                        )),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
              child: Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('OTA',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Container(
                        child: Row(
                          children: [
                            index4!=0?
                            InkWell(
                                child: Icon(Icons.remove_circle,size: 40,),
                                onTap: ()=> setState(()=> index4--)):Container(
                              child: Icon(Icons.remove_circle,size: 40,),
                            ),
                            SizedBox(width: 10,),
                            Text(index4.toString(),style: TextStyle(fontSize: 19),),
                            SizedBox(width: 10,),
                            InkWell(child: Icon(Icons.add_circle,size: 40,),
                                onTap: ()=> setState(()=> index4++)),
                          ],
                        )),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Comments',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Padding(padding: EdgeInsets.only(left: 20),
              child: Container(
                width: 250,
                height: 50,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.appcolor
                ),
                    child: Text('Cancellation')),
              ),
            ),
              SizedBox(width: 7,),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(height: 50,
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.appcolor
                    ),
                        child: Text('Delay'))),
              ))
               ]
            ),
            Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(height: 50,
                      child: ElevatedButton(onPressed: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Success"),
                              content: Text("Saved successfully"),
                              actions: [
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                },style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstants.appcolor
                                ), child: Text('Ok')),
                                ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchStation() ));
                                },style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorConstants.appcolor
                                ), child: Text('Search Station'))
                              ],
                            );
                          },
                        );
                      },style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.appcolor
                      ),
                          child: Text('Save'))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
