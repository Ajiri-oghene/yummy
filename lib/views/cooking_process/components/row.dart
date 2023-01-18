import 'package:flutter/material.dart';
import 'package:yummy/utils/colors.dart';

class CookRow extends StatelessWidget {
  final String name;
  final String hour;
  const CookRow({super.key,
  required this.name,
  required this.hour
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                    name,
                    style: TextStyle(
                      color: kpink,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  ),
                  Text(
                    hour,
                    style: TextStyle(
                      color: kBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  )
               ],
            ),
    );
  }
}