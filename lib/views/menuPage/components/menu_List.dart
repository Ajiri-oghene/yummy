import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
import 'package:yummy/views/homePage/component/myClipper.dart';
import 'package:yummy/views/widgets/third_clipper.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            child: ClipPath(
              child: Image.network(
                'https://www.preciouscore.com/wp-content/uploads/2021/12/Jollof-Rice-With-Chicken-683x1024.jpg',
                fit: BoxFit.cover,
              ),
              clipper: ThirdClipper(),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              'Fast food',
              style: TextStyle(
                color: kBlack,
              ),
            ),
          )
        ],
      ),
    );
  }
}