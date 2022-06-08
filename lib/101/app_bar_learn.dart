import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "App Bar Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),

        //app barın solundaki obje. örnegin icon koyulabilir
        leading: const Icon(Icons.adb_sharp),
        //leading objesini sola sağa yanaştırır. sayı büyüdükçe sağa yanaşır
        // leadingWidth: 20,

        //title yazısını ortaya alır
        centerTitle: true,

        //appbar'ı transparan yapar
        backgroundColor: Colors.transparent,
        //hem transparan hem de elevation 0 yapılırsa body ve appbar aynı renk olur. birleşik gibi olur
        elevation: 0,

        //yukarda saatin oldugu status barının rengini ayarlar. mesela dark temalı uygulamada status bar yine de light yapılabilir
        systemOverlayStyle: SystemUiOverlayStyle.light,

        //actions kısmındaki text'lere style verir
        toolbarTextStyle: const TextStyle(color: Colors.yellow),

        //app barın solundaki back butonu otomatik olarak gelmesin
        automaticallyImplyLeading: false,

        //app barın sağ tarafında tanımladığımız actionların temalarını ayarlar. renk, shadow vs.
        actionsIconTheme: const IconThemeData(color: Colors.red, shadows: [
          Shadow(color: Colors.white, offset: Offset(0.1, 1), blurRadius: 0.3)
        ]),

        //app barın sağ tarafında bi menu/buton vs yapmamızı sağlar
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),

          //cevap bekleniyor animasyonu
          const Center(child: CircularProgressIndicator()),

          //app barın sag tarafına (action bolumune) obje eklersin. ornek text
          const Text("a"),
          const Text("b"),
        ],
      ),
      body: Column(children: const []),
    );
  }
}
