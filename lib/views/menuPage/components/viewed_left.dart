import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
//import 'package:yummy/views/widgets/left_button.dart';
import 'package:yummy/views/widgets/right_button.dart';
import 'package:yummy/views/widgets/third_clipper.dart';

class ViewedLeft extends StatelessWidget {
  const ViewedLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            child:ClipPath(
              child: Image.network(
                'https://www.preciouscore.com/wp-content/uploads/2021/12/Jollof-Rice-With-Chicken-683x1024.jpg',
                fit: BoxFit.cover,
              ),
              clipper: ThirdClipper(),
            ) ,
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              'Jollof Rice and Chicken',
              style: TextStyle(
                color: kBlack,
              ),
            ),
          ),
          SizedBox(height: 10,),
          RightButton(
           name: 'Read More',
           color: backGround,
           colors: kpure,
          )
        ],
      ),
    );
  }
}