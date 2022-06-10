import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Life Cycle Learn"),
      ),
      // body: Text(widget.message),
      body: Column(
        children: [
          TextFormField(
            minLines: 2,
            maxLines: 4,
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
