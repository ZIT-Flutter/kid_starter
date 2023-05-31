import 'package:flutter/material.dart';

class SequenceCard extends StatelessWidget {
  String imageLocation;

  SequenceCard({Key? key, required this.imageLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          // border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3), // changes the position of the shadow
          ),
        ]
      ),
      height: 170,
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
          child: Image.asset(imageLocation)),
    );
  }
}
