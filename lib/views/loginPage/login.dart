import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
import 'package:yummy/views/loginPage/components/checklist.dart';
import 'package:yummy/views/loginPage/components/secondClipper.dart';
import 'package:yummy/views/menuPage/menu.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? checkBoxValue = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [  
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width:  MediaQuery.of(context).size.width,
              child: ClipPath(
                child: Image.asset(
                  'asset/vegan.jpg',
                  fit: BoxFit.cover,
                ),
                clipper: SecondClipper(),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [//start
                       Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        width: double.infinity,
                        child: const TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          cursorColor: backGround,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: backGround,
                            ),
                             border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                color: backGround,
                              )
                            ),
                             focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                color: backGround,
                              )
                             ),
                             filled: true,
                             fillColor: Colors.white,
                             hintText: 'Enter your Email',
                          ),
                        ),
                      ), 

                      SizedBox(height: 20,),

                      Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        width: double.infinity,
                        child:  TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          cursorColor: backGround,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: backGround,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText =!_obscureText; 
                                });
                              },
                              child: Icon(_obscureText?
                                Icons.visibility
                                : Icons.visibility_off,
                                color: backGround ,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                color: backGround,
                              )
                            ),
                             focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                color: backGround,
                              )
                             ),
                             filled: true,
                             fillColor: Colors.white,
                             hintText: 'Enter your Password',
                          ),
                          obscureText: _obscureText,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Container(
                                  color: kpure,
                                  height: 13.99,
                                  width: 13.99,
                                  child: Theme(
                                    data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: kpure,
                                    ),
                                    child: Checkbox(
                                     value: checkBoxValue,
                                     onChanged: (bool? value) {
                                       setState(() {
                                         checkBoxValue = value;
                                       });
                                     },
                                     activeColor: kpure,
                                     checkColor: backGround,
                                     //tristate: true,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text('Keep me logged in',
                                style: TextStyle(
                                  color: kpure
                                ),
                                )
                              ],
                            ),
                          ),
                        GestureDetector(onTap: () {},
                        child: Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: () {}, 
                        child: const Text('Forgot Password?',
                        style: TextStyle(
                          //fontSize: 20,
                          color: kpure,
                        ),
                        ),
                        ),
                      ),
                    ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                           MaterialPageRoute(builder: (context)=> MenuPage())
                          );
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kpure,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(55),
                              bottomRight: Radius.circular(55),
                            )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: backGround
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ), 
            )
          ],
        ),
      ),
    );
  }
}