import 'package:flutter/material.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({Key? key}) : super(key: key);
  final String _appBarTitle = "List Tile Learn";
  final String imageUrl = "images/png/apple.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Image.asset(imageUrl,height: 100,fit: BoxFit.cover,),
                  // dense: true,
                  // contentPadding: EdgeInsets.zero,
                  onTap: () {},
                  subtitle: Text("How do you use your card"),
                  minVerticalPadding: 0,
                  dense: true,
                  leading: Container(height: 100,width: 30,alignment: Alignment.topCenter,color: Colors.red,child: Icon(Icons.money)),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
