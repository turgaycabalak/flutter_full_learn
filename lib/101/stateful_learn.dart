import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefulLearnView extends StatefulWidget {
  const StatefulLearnView({Key? key}) : super(key: key);

  @override
  State<StatefulLearnView> createState() => _StatefulLearnViewState();
}

class _StatefulLearnViewState extends State<StatefulLearnView> {
  int _countValue = 0;

  void _updateCountValue(bool isIncrement) {
    isIncrement
        ? setState(() {
            ++_countValue;
          })
        : setState(() {
            --_countValue;
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.statefulLearnTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deIncrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print("arttırıyorum");
    return FloatingActionButton(
      onPressed: () {
        _updateCountValue(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deIncrementButton() {
    print("azaltiyorum");
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCountValue(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
