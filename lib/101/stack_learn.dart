import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({Key? key}) : super(key: key);
  final String appBarText = "Stack Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 250,
            ),
          ),
          Positioned(
            width: 80,
            height: 80,
            // top: 60,
            bottom: 10,
            left: 25,

            child: Container(
              color: Colors.greenAccent,
            ),
          ),

          Positioned.fill(
            top: 100,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
