import 'package:flutter/material.dart';
import 'package:yummy/views/cooking_process/cookingProcess.dart';
import 'package:yummy/views/homePage/homePage.dart';
import 'package:yummy/views/menuPage/menu.dart';
//import 'package:yummy/views/loginPage/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yummy',
      home: HomePage(),
    );
  }
}
