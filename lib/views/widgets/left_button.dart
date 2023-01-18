import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  final String name;
  final Color color;
  final Color colors;
  const LeftButton({super.key,

  required this.name,
  required this.color,
  required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(name,
          style: TextStyle(
            color: colors,
            fontFamily: 'Avenir',
            fontSize: 20
          ),
          ),
        ),
      ), 
    );
  }
}