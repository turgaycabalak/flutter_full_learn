import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearnView extends StatefulWidget {
  const PageViewLearnView({Key? key}) : super(key: key);

  @override
  State<PageViewLearnView> createState() => _PageViewLearnViewState();
}

class _PageViewLearnViewState extends State<PageViewLearnView> {
  final _pageController = PageController(viewportFraction: 0.8);

  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState((){
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: const Duration(seconds: 2), curve: Curves.bounceInOut);
              },
              child: const Icon(Icons.chevron_left_outlined),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right_outlined),
          ),
        ],
      ),

      appBar: AppBar(
        title: const Text("Page View Learn"),
      ),

      //diğer sayfaları yana geçerek gidebilirsin
      body: PageView(
        //true: her bir sayfanın solunda boşluk bırakarak başlatır
        //false: sayfaların solu en kenardan başlar
        padEnds: false,
        //diğer sayfaları ekranın kenarından gösterir
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLearnView(),
          IconLearnView(),
          const StackLearnView(),
        ],
      ),
    );
  }
}

