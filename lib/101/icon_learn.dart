import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final String _title = "Icon Learn";
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(children: [

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            size: iconSize.iconSmall,
            color: Theme.of(context).backgroundColor,
          ),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            size: iconSize.iconSmall,
            color: Theme.of(context).colorScheme.error,
          ),
        ),

        //color veya size gibi degerleri class icerisinden ortal olarak ver.
        //best practice: Theme ile color vermek.
        //böylece light veya dark theme için otomatik color degistirir (ornek yukardakiler)
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            size: iconSize.iconSmall,
            color: iconColors.monza,
          ),
        ),
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 35;
}

class IconColors {
  final Color monza = const Color(0xFFC40829);
}