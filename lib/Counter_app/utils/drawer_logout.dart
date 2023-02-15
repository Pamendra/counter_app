import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:flutter/material.dart';

import '../Presentation/Pages/Login_Screen/login_page.dart';

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
    height: 50,
    ),
    Container(

    child: ListTile(
    leading: Icon(Icons.close_sharp,color: Colors.white,size: 25,),
    onTap: (){
    Navigator.pop(context);
    },
    ),
    ),
    Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
      shape: Border(bottom:BorderSide(color: ColorConstants.backgroundappColor,)),
      title: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
      onTap: (){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
            builder: (context) => LoginPage()), (Route route) => false);
      }
      ),


    )
    ],
    ));

  }
}
