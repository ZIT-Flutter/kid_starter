import 'package:flutter/material.dart';

import '../widgets/sequence_card.dart';

class GameScreen extends StatefulWidget {
  final List<String> imagesList;

  GameScreen({Key? key, required this.imagesList}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 10),
          child: Column(
            children: [
              Text(
                'Game Screen',
                textScaleFactor: 1.5,
              ),
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
                            for (var image in widget.imagesList)
                              Container(
                                margin: EdgeInsets.all(5),
                                width: 120,
                                child: Draggable(
                                  child: SequenceCard(imageLocation: image),
                                  feedback: SequenceCard(imageLocation: image),
                                  childWhenDragging: Container(width: 140),
                                ),
                              )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        height: 150,
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Container(
                                height: 150,
                                width: 120,
                                child: SequenceCard(
                                    imageLocation:
                                        'assets/images/sequences/blank_card.png'),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // width: 0,
                    child: Text(
                      'Score:',
                      textScaleFactor: 1.5,
                      style: TextStyle(fontFamily: 'AdorshoLipi'),
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
