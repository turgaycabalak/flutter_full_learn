import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);
  final String appBarText = "Card Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
      ),
      body: Column(
        children: [
          Card(
            //card'ın dışına boşluk verir
            margin: ProjectMargins.cartMargin,

            color: Theme.of(context).colorScheme.error,

            //card a sekil verir -> StadiumBorder(), CircleBorder(), RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text("card -> sizedBox"),
              ),
            ),
          ),

          //From Custom Card
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text("card from customCard"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cartMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});

  final Widget child;
  final roundedRectangleBorder = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15),),);

  @override
  Widget build(BuildContext context) {
    return Card(
      //card'ın dışına boşluk verir
      margin: ProjectMargins.cartMargin,

      color: Theme.of(context).colorScheme.error,

      //card a sekil verir -> StadiumBorder(), CircleBorder(), RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
      // shape: roundedRectangleBorder,
      child: child,
    );
  }
}
