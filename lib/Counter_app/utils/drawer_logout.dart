import 'package:flutter/material.dart';

import '../Presentation/Pages/login_page.dart';

class DrawerLogout extends StatelessWidget {
  const DrawerLogout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(

    backgroundColor: const Color(0xFF31353D),

    child: ListView(
    padding: EdgeInsets.zero,

    children: [
    SizedBox(
    height: 25,
    ),
    Container(
    // decoration: BoxDecoration(border: Border(bottom: BorderSide())),
    child: ListTile(
    leading: Container(
    decoration: BoxDecoration(
    border: Border.all(color: Colors.white)
    ),
    child: Icon(Icons.close_sharp,color: Colors.white,size: 25,)),
    onTap: (){
    Navigator.pop(context);
    },
    ),
    ),
    ListTile(
    shape: RoundedRectangleBorder(
    side: BorderSide(strokeAlign: StrokeAlign.outside,color:Color (0xFFE8ECEF) ),
    borderRadius: BorderRadius.circular(2),
    ),

    title: Text('Logout',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19,color: Colors.white),),
    onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
    );
    },
    )
    ],
    ));

  }
}
