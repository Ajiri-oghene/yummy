import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
import 'package:yummy/views/cooking_process/components/fourthClipper.dart';
import 'package:yummy/views/homePage/homePage.dart';
import 'package:yummy/views/loginPage/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back
                      ),
                    ),
                    SizedBox(width: 100,),
                    Text('SIGN UP',
                    style: TextStyle(
                      color: kBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 350,
                  width: double.infinity,
                  child: ClipPath(
                    child: Image.network(
                      'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Chicken-Pizza_exps30800_FM143298B03_11_8bC_RMS.jpg',
                      fit: BoxFit.cover,
                    ),
                    clipper: FourthClipper(),
                  ),
                ),
                SizedBox(height: 40,),

                Center(
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
                        SizedBox(height: 40,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context)=> LoginPage())
                            );
                          },
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: backGround,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(55),
                                bottomRight: Radius.circular(55),
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: kpure
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ] 
              ),
          ),
      ),
        ),
      );
  }
}