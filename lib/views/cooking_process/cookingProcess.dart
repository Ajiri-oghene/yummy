import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';
import 'package:yummy/views/cooking_process/components/fourthClipper.dart';
import 'package:yummy/views/cooking_process/components/row.dart';
import 'package:yummy/views/widgets/left_button.dart';
import 'package:yummy/views/widgets/right_button.dart';

class CookingProcess extends StatelessWidget{
const CookingProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 300,
                width: double.infinity,
                child: ClipPath(
                  child: Image.network(
                    'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Chicken-Pizza_exps30800_FM143298B03_11_8bC_RMS.jpg',
                    fit: BoxFit.cover,
                  ),
                  clipper: FourthClipper(),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'HandMade Pizza',
                  style: TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CookRow( name: 'Prep Time', hour: '2 Hours'),
                  CookRow(name: 'Cooking Time', hour: '2 Hours'),
                  CookRow(name: 'Servings', hour: '2 Hours')
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 150,
                child: Expanded(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      scrollbarTheme: ScrollbarThemeData(
                        trackColor: MaterialStateProperty.all(Colors.grey),
                        //trackBorderColor: MaterialStateProperty.all(Colors.blue),
                        thumbColor: MaterialStateProperty.all(backGround)
                      )
                    ),
                    child: Scrollbar(
                      thumbVisibility: true,
                      trackVisibility: true,
                      //thickness: 10,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                         style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 20
                         ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RightButton(name: 'Like', color: backGround, colors: kpure),
                  LeftButton(name: 'share', color: backGround, colors: kpure)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}