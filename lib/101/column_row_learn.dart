import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({Key? key}) : super(key: key);
  final String appBarText = "Column Row Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
      ),
      body: Column(
        children: [

          Expanded(flex: 4,child: Row(
            children: [
              Expanded(flex: 4,child: Container(color: Colors.red)),
              Expanded(flex: 2,child: Container(color: Colors.blue)),
              Expanded(flex: 2,child: Container(color: Colors.yellow)),
              Expanded(flex: 2,child: Container(color: Colors.greenAccent)),
            ],
          ),),

          const Spacer(),

           Expanded(flex: 2,
               child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  //aşağıdaki text datalarının aralarındaki boşluğu min yapar.
                  //default olarak max'tır. min yaptığımız durumda üstteki alignment'ların işlevi gider.
                  mainAxisSize: MainAxisSize.min,
                  children: [
             Text("data1"),
             Text("data2"),
             Text("data3"),
             Text("data4"),
           ],)),

          const Expanded(flex: 2,child: FlutterLogo(),),

        ],
      ),

      // body: Column(
      //   children: [
      //     Expanded(flex: 4,child: Container(color: Colors.red),),
      //     Expanded(flex: 2,child: Container(color: Colors.green),),
      //     Expanded(flex: 2,child: Container(color: Colors.yellow),),
      //     Expanded(flex: 1,child: Row(
      //       children: [
      //         Expanded(flex: 2,child: Container(color: Colors.purple)),
      //         Expanded(flex: 2,child: Container(color: Colors.red)),
      //         Expanded(flex: 1,child: Container(color: Colors.blue)),
      //       ],
      //     ),),
      //   ],
      // ),
    );
  }
}
