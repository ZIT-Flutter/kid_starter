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
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SequenceCard(imageLocation: widget.imagesList[0]),
                            SequenceCard(imageLocation: widget.imagesList[1]),
                            SequenceCard(imageLocation: widget.imagesList[2]),
                            SequenceCard(imageLocation: widget.imagesList[3]),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        height: 150,
                        child: Row(
                          children: [
                            SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                            SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                            SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                            SequenceCard(imageLocation: 'assets/images/sequences/blank_card.png'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    // width: 0,
                    child: Text('Score:', textScaleFactor: 1.5, style: TextStyle(fontFamily: 'AdorshoLipi'),),
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
