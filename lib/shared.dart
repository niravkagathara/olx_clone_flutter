import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';

class Shared extends StatefulWidget {
  const Shared({Key? key}) : super(key: key);

  @override
  _SharedState createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  bool? check1 = false;
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  String _loginMessage = '';
  String text ="hello";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: "lexend-bold",
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0.1,
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                return 'please enter name';
                              }
                              String pattern="[a-z][A-Z]";
                              var emailRegExp=RegExp(pattern);
                              if(!emailRegExp.hasMatch(value!)){
                                return "please enter valid name";
                              }
                              return null;
                            },
                            controller: _username,
                            cursorColor: Colors.blue,
                            style: TextStyle(fontFamily: "lexend-bold"),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'User Name',
                            ),

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 0.1,
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                return 'please enter passward';
                              }
                              String pattern="[a-z][A-Z]";
                              var emailRegExp=RegExp(pattern);
                              if(!emailRegExp.hasMatch(value!)){
                                return "please enter valid name";
                              }
                              return null;
                            },
                            controller: _password,
                            cursorColor: Colors.blue,
                            style: TextStyle(fontFamily: "lexend-bold"),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: check1,
                                activeColor: Colors.blue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    check1 = value;
                                  });
                                },
                              ),
                              Text(
                                "Remember Me",
                                style: TextStyle(
                                  fontFamily: "lexend-medium",
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Forget Password?",
                            style: TextStyle(
                              fontFamily: "lexend-medium",
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String username = _username.text;
                        String password = _password.text;
                        SharedPreferences preference = await SharedPreferences.getInstance();
                        await preference.setString('ScreenName', 'PreLoginPage');
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)   {
                              return Home();
                            },
                          ),
                        );
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            text=_username.text;
                            text=_password.text;
                          });
                          print('Login successful');
                        }
                        else{
                          setState(() {
                            _loginMessage = 'Login failed';
                          });
                          print('Login failed');
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontFamily: "lexend-medium",
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
                )
            ),
          ),
        )
    );
  }
}
