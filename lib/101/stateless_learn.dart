import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({Key? key}) : super(key: key);
  final String text1 = "ngss1";
  final String text2 = "ngss2";

  //extracting method
  SizedBox _emptyBox() => const SizedBox(
        height: 10,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Learn"),
      ),
      body: Column(
        children: [
          //My custom widget classconst
          TitleTextWidget(
            text: text1,
          ),
          TitleTextWidget(
            text: text2,
          ),
          const TitleTextWidget(
            text: "ngss3",
          ),

          const _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }
}

// extracting widget
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
