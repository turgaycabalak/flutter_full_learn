import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/CARD_LEARN.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/page_view_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/stateful_life_cycle_learn.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';
import 'package:flutter_full_learn/demos/note_demos_view.dart';
import '101/color_learn.dart';
import '101/stateful_learn.dart';
import 'demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        errorColor: ColorsItems.sulu,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      // home: TextLearnView(),
      // home: ContainerSizedBoxLearn(),
      // home: ScaffoldLearnView(),
      // home: ButtonLearn(),
      // home: AppBarLearnView(),
      // home: IconLearnView(),
      // home: ColorLearnView(),
      // home: StatelessLearnView(),
      // home: PaddingLearnView(),
      // home: CardLearnView(),
      // home: ImageLearnView(),
      // home: NoteDemos(),
      // home: CustomWidgetLearn(),
      // home: IndicatorLearnView(),
      // home: ListTileLearnView(),
      // home: ColumnRowLearnView(),
      // home: StackLearnView(),
      // home: StackDemoView(),
      // home: StatefulLearnView(),
      // home: PageViewLearnView(),
      home: StatefulLifeCycleLearn(message: "NGSS DENEME"),
    );
  }
}
