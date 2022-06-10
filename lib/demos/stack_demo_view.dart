import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final String _appBarText = "Stack Demo";
  final _cardHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarText),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [

                Positioned.fill(
                  bottom: (_cardHeight / 2),
                  child: RandomImage(),
                ),

                Positioned(
                  // right: 0,
                  // left: 0,
                  bottom: 0,
                  height: _cardHeight,
                  width: 200,
                  child: const Card(
                    color: Colors.indigo,
                    shape: RoundedRectangleBorder(),
                  ),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}
