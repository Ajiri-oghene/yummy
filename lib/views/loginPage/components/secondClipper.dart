import 'package:flutter/material.dart';

class SecondClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-300);
    var firstControlPoint = Offset(size.width* 0.09, size.height);
    var firstEndPoint = Offset(size.width/2, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
     firstEndPoint.dx, firstEndPoint.dy);

     var secondControlPoint = Offset(size.width* 0.9, size.height);
     var secondEndPoint = Offset(size.width, size.height-130);

     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, 
     secondEndPoint.dx, secondEndPoint.dy);

     //  path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
    //   thirdEndPoint.dx, thirdEndPoint.dy);


   // path.lineTo(size.width/2, size.height);
    //path.lineTo(size.width, size.height -150);
    path.lineTo(size.width, 0);

    //  var thirdControlPoint = Offset(dx, dy);
    //  var thirdEndPoint = Offset(dx, dy);

    

     path.close();
     
     return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}