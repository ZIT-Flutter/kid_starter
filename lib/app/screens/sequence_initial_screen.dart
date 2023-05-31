import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kid_starter/app/screens/game_screen.dart';
import 'package:kid_starter/app/widgets/sequence_card.dart';

class SequenceInitialScreen extends StatefulWidget {
  List<String> imageLocations;

  SequenceInitialScreen({Key? key, required this.imageLocations})
      : super(key: key);

  @override
  State<SequenceInitialScreen> createState() => _SequenceInitialScreenState();
}

class _SequenceInitialScreenState extends State<SequenceInitialScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 60, right: 60, top: 60, bottom: 20),
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SequenceCard(imageLocation: widget.imageLocations[0]),
                    SequenceCard(imageLocation: widget.imageLocations[1]),
                    SequenceCard(imageLocation: widget.imageLocations[2]),
                    SequenceCard(imageLocation: widget.imageLocations[3]),
                  ],
                ),

                Spacer(),
                ElevatedButton(onPressed: () {
                  print('Going to Game Screen');
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>
                          GameScreen(imagesList: widget.imageLocations)));
                }, child: Text('Start Game'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
