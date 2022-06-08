import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container Eğitim"),),
      body: Column(
        children: [
          ///////////////////////// SIZED BOX //////////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("t" * 500),
          ),
          ///////////////////////// CONTAINER //////////////////////////////////////////////////////////////////////////////////////////////////
          Container(
            // width: 50,
            // height: 50,
            constraints: const BoxConstraints(
              //genislik ve yüksekliği içindeki text e göre değişiyor.
              //bi yukarıdaki containerın width ve height değerlerini verirsen boyutu fixlemiş olursun ve dinamikliği yapamazsın.
              maxWidth: 250,
              minWidth: 25,
              maxHeight: 150,
              minHeight: 25,
            ),
            //iç komponente padding(boşluk) atayabilirsin (içe doğru boşluk açma)
            padding: const EdgeInsets.all(10),

            //dış komponente margin(boşluk) atayabilirsin (dışa doğru boşluk açma)
            margin: const EdgeInsets.all(15),

            decoration: ProjectUtility.boxDecoration,
            child: Text("a" * 500),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    // color: Colors.red,
    // shape: BoxShape.circle,
    border: Border.all(
      width: 10,
      color: Colors.white,
    ),
    gradient:
        const LinearGradient(colors: [Colors.purple, Colors.blue, Colors.red]),
    boxShadow: const [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 2),
        blurRadius: 12,
      ),
    ],
    borderRadius: const BorderRadius.all(
      Radius.circular(2),
    ),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          // color: Colors.red,
          // shape: BoxShape.circle,
          border: Border.all(
            width: 10,
            color: Colors.white,
          ),
          gradient: const LinearGradient(
              colors: [Colors.purple, Colors.blue, Colors.red]),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 2),
              blurRadius: 12,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
        );
}
