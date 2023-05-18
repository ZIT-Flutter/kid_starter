import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(widget.imageLocations[0]),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(widget.imageLocations[1]),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(widget.imageLocations[2]),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(widget.imageLocations[3]),
                    ),
                  ],
                ),
                
                ElevatedButton(onPressed: (){}, child: Text('Start Game'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
