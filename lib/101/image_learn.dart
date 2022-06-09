import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);
  final String appBarText = "Image Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 150,
            child: PngImage(name: ImageItems().appleBookWithoutPath),
          ),
          // Image.network(
          //   "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/800px-Apple-book.svg.png",
          //
          //   //image gelemezse
          //   errorBuilder: (context, error, stackTrace) => const Text("data bulunamadi"),
          // ),

        ],
      ),
    );
  }
}

class ImageItems {
  // final String appleBook = "images/png/apple.png";
  final String appleBookWithoutPath = "apple";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath(),
      fit: BoxFit.cover,
    );
  }

  String _nameWithPath() => "images/png/$name.png";
}
