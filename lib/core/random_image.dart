import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100}) : super(key: key);
  final String imageUrl = "images/png/apple.png";
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      height: height,
      fit: BoxFit.fill,
    );
  }
}
