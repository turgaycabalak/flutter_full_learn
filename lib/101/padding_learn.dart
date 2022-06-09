import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);
  final String appBarText = "Padding Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
      ),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [

            //NOT: Container ların icinde kendi padding ozelligi vardir
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.blueGrey,
              height: 100,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.white,
                height: 100,
                // width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.green,
                height: 100,
                // width: 200,
              ),
            ),

            ///////////////  BEST PRACTICE PADDING /////////////
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,
              child: Container(
                color: Colors.blueGrey,
                height: 100,
                // width: 200,
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Container(
            //     color: Colors.green,
            //     height: 100,
            //     // width: 200,
            //   ),
            // ),
            //
            // const Padding(
            //   padding: EdgeInsets.only(right: 10),
            //   child: Text("NGSS"),
            // ),

          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);

}