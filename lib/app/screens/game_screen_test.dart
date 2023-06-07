import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/sequence_card.dart';

class GameScreenTest extends StatefulWidget {
  final List<String> imagesList;

  GameScreenTest({Key? key, required this.imagesList}) : super(key: key);

  @override
  State<GameScreenTest> createState() => _GameScreenTestState();
}

class _GameScreenTestState extends State<GameScreenTest> {


  @override
  Widget build(BuildContext context) {
    Random random = Random();
    widget.imagesList.shuffle(random);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 30, right:10),
          child: Column(
            children: [
              Text('Game Screen', textScaleFactor: 1.5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        // height: 150,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for(var image in widget.imagesList)

                              Container(
                                width: 120,
                                child: Draggable(

                                  childWhenDragging: Container(width: 140,),
                                    feedback: SequenceCard(imageLocation: image),
                                    child: SequenceCard(imageLocation: image)),
                              ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        // height: 120,
                        child: Row(
                          children: [
                            for(int i=0; i<4; i++)
                              Container(
                                width: 120,
                                  height: 150,
                                  child: SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),),


                            // SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                            // SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                            // SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    // width: 0,
                    child: Column(
                      children: const [
                        Text('Score', textScaleFactor: 1.5, style: TextStyle(fontFamily: 'AdorshoLipi'),),
                        Text('00', textScaleFactor: 1.5, style: TextStyle(fontFamily: 'AdorshoLipi'),),
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
