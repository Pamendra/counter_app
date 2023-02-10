import 'dart:convert';

import 'package:bloc/src/bloc.dart';
import 'package:counter_app/Counter_app/Bloc/AuthenticationBloc/authentication_state.dart';
import 'package:counter_app/Counter_app/Presentation/Pages/Select_station.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;


class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);




  State<LoginPage> createState() => _LoginPageState();

  then(Emitter<AuthenticationState> Function(dynamic value) param0) {}
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _passwordVisible = false;
  bool isLoading = false;


  checkapi() async {
    var dataBody = {"username": emailController.text, "password": passController.text};
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: jsonEncode(dataBody),
        headers : headers);

    if (response.statusCode == 200) {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EnterStation()),
      );
    }
  }

  @override
  void initState(){
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECEF),
      appBar:AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.cloud_done,
              size: 35,
            ),
          ),
        ],
        backgroundColor:const Color(0xFF31353D),
        leading: GestureDetector(
          onTap: () { Fluttertoast.showToast(msg: 'hello');},
          child:const Padding(
            padding:  EdgeInsets.all(10.0),
            child:  Icon(
              Icons.menu_outlined,
              size: 35,// add custom icons also
            ),
          ),
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Image.asset('assets/images/pcds.webp'),
                    ),
                  ),
                const  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        padding:const EdgeInsets.only(left: 18),
                          child:const Text('Username or User ID',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Username or UserID',
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(11)
                          )
                        ),
                    ),
                  ),
                const  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 18),
                         child: const Text('Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passController,
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            onPressed: (){
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                            },
                          ),
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(11)
                          )
                      ),
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.only(left: 200),
                    child: const InkWell(child: Text('Forget Password ?',style: TextStyle(decoration: TextDecoration.underline,),)),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const Color(0xFF31353D),
                      ),
                      onPressed: () async {
                          if(emailController.text.isEmpty){
                          Fluttertoast.showToast(msg: 'please enter user id');
                          }
                          else  if(passController.text.isEmpty){
                            Fluttertoast.showToast(msg: 'please enter password');
                          }
                          // else if(emailController.text.isNotEmpty && !(emailController.text.contains('@gmail.com'))){
                          // Fluttertoast.showToast(msg: 'please enter valid user id');
                          // }
                          else {

                            setState(() {
                              isLoading = true;
                            });
                            await Future.delayed(const Duration(seconds: 2));
                            setState(() {
                              isLoading = false;
                            });

                            checkapi();
                            
                            setState(() {
                              isLoading = true;
                            });
                            await Future.delayed(const Duration(seconds: 2));
                            setState(() {
                              isLoading = false;
                            });
                          }
                  },
                      child:Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:  [
                      Center(child: isLoading ?  const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 1.5,
                          ))
                          : const Text('Submit'),
                      ),]),

                  ) ,

                ],
              ),
            ),
          ),
      ),

      );

  }
}
