import 'package:flutter/material.dart';

class SequenceCard extends StatelessWidget {
  String imageLocation;

  SequenceCard({Key? key, required this.imageLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          // border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2), // changes the position of the shadow
          ),
        ]
      ),
      // height: 170,
      // width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),

          child: Image.asset(imageLocation, fit: BoxFit.fill,)),
    );
  }
}
