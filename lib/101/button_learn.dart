import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Butonlar"),
      ),
      body: Column(
        children: [
          //onPressed null atanirsa, buton pasifleşir (bazilarinda renk gider, click sesi pasiflesir ..)
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              //butona basilmadiginda kirmi, basildiginda yesil yapar
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.red;
              }),
            ),
            child: Text(
              "My Text Button",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.black87),
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            child: const Text("My Elevated Button"),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit_outlined),
          ),

          FloatingActionButton(
            onPressed: () {
              //servise istek at
              //sayfanin rengini duzenle
              //... gibi islemler
            },
            child: const Icon(Icons.add),
          ),

          //SizedBox da verilebilinir. margin ozelligi oldugu icin Container kullandim
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(10),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              child: const Text("My Outlined Button"),
            ),
          ),

          //iconlu butonlar yapmak icin kullaniriz, myButton.icon() -> (tum butonlarda var)
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.adb),
            label: const Text("iconlu buton"),
          ),

          InkWell(
            onTap: () {},
            child: const Text("My custom InkWell"),
          ),

          Container(
            height: 50,
            color: Colors.grey,
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.brown,
              // Borders, CircleBorder(), RoundedRectangleBorder(), StadiumBorder()
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 40, right: 40),
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Borders, CircleBorder(), RoundedRectangleBorder()
