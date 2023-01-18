import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
import 'package:yummy/views/homePage/component/myClipper.dart';
import 'package:yummy/views/loginPage/login.dart';
import 'package:yummy/views/sign_up/sign_up.dart';
import 'package:yummy/views/widgets/left_button.dart';
import 'package:yummy/views/widgets/right_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
     // learn universal variable

    return Scaffold(
      backgroundColor: backGround,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight*0.7,
            child: ClipPath(
              child: Image.asset(
                'asset/vegan.jpg',
                fit: BoxFit.cover,
              ),
              clipper: MyCliper(),
            ),
          ),
          const SizedBox(height: 35),
          Center(
            child: Text('Yummy',
            style: TextStyle(
              color: kpure,
              fontFamily: 'Avenir',
              fontSize: 30,
              
            ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignUp())
                    );
                  },
                  child: RightButton(
                    name: 'SIGN UP',
                    colors: backGround,
                   color: kpure
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                     MaterialPageRoute(
                      builder: (context) => LoginPage()
                     )
                    );
                  },
                  child: LeftButton(
                    name: 'LOG IN',
                   color: kpure,
                   colors: backGround
                  ),
                )
              ],
            ),
          )
        ],
     ),
    );
  }
}