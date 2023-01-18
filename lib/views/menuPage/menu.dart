import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
import 'package:yummy/views/cooking_process/cookingProcess.dart';
import 'package:yummy/views/menuPage/components/menu_List.dart';
import 'package:yummy/views/menuPage/components/viewed_left.dart';
import 'package:yummy/views/menuPage/components/viewed_right.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: profileHeight/5,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        'https://www.informationng.com/wp-content/uploads/2018/04/top-10-states-in-nigeria-with-the-most-beautiful-girls-1.jpg',
                        
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Hello Debbie!',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBlack
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  'What Do you prefer to cook ?',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: kBlack
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                        fontSize: 22
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'All',
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 22,
                            fontWeight: FontWeight.bold

                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: kBlack,
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(8, (index) => MenuList(),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Most Viewed',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: kBlack
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                         MaterialPageRoute(
                          builder: ((context) => CookingProcess())
                          )
                        );
                      },
                      child: ViewedLeft()
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                         MaterialPageRoute(
                          builder: (context)=> CookingProcess()
                         )
                        );
                      },
                      child: ViewdRight()
                      ),
                  ],
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}