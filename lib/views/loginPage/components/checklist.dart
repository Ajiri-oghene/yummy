//import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:yummy/utils/colors.dart';

// class Check extends StatefulWidget {
//   const Check({super.key});

//   @override
//   State<Check> createState() => _CheckState();
// }

// class _CheckState extends State<Check> {
//   bool? _isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: CheckboxListTile(
//         title: Text('Keep me logged in',
//         style: TextStyle(
//           color: kpure
//         ),
//         ),
//         value: _isChecked,
//        onChanged: (bool? newValue) {
//         setState(() {
//           _isChecked = newValue;
//         });
//        },
//        activeColor: backGround,
//        checkColor: kpure,
//        tileColor: kpure,
//       ),
//     );
//   }
// }