import 'package:flutter/material.dart';

import '../constant.dart';

class ImageTileCard extends StatelessWidget {
  String imagePath;
  final VoidCallback onTap;

  ImageTileCard({Key? key, required this.imagePath, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 20,
            color: kActiveShadowColor,
          ),
        ],
      ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(15.0),
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                ),
              ],
            ),
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
