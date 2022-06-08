import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Learn"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.deepOrange,
            child: const Text("text data"),
          ),
          Container(
            color: ColorsItems.sulu,
            child: const Text("text data"),
          ),
          Container(
            //container a color vermek istersen theme üzerinden verebiliriz (vermeyeceksek container a gerek yok)
            // color: Theme.of(context).errorColor,
            child: Text(
              "text data",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color porsche = Color(0xFFEAAE69);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
