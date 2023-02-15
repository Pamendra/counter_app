import 'package:counter_app/Counter_app/utils/colors_constants.dart';
import 'package:counter_app/Counter_app/utils/drawer_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchStation extends StatefulWidget {
  const SearchStation({Key? key}) : super(key: key);

  @override
  State<SearchStation> createState() => _SearchStationState();
}

class _SearchStationState extends State<SearchStation> {
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundappColor,
      drawer: DrawerLogout(),
      appBar: AppBar(
        backgroundColor: ColorConstants.appcolor,
      ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: ColorConstants.appcolor
            ),

            height: 50,
            child: CupertinoSearchTextField(
              prefixIcon: Icon(Icons.search,color: Colors.grey,size: 25,),
              style: TextStyle(fontSize: 18),
              controller: controller,
              onChanged: (value) {},
              onSubmitted: (value) {},
              autocorrect: true,
            ),
          ),
        ),
    );
  }
}
