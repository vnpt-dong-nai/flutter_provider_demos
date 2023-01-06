import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_provider_demos/modules/demos/services/simple_value_provider.dart';
import 'package:provider/provider.dart';

class SimpleValueScreen extends StatefulWidget {
  const SimpleValueScreen({Key? key}) : super(key: key);

  @override
  State<SimpleValueScreen> createState() => _SimpleValueScreenState();
}

class _SimpleValueScreenState extends State<SimpleValueScreen> {
  @override
  Widget build(BuildContext context) {
    SimpleValuesProvider store = context.watch();
    return Scaffold(
      appBar: AppBar(title: Text("Simple Values")),
      body: _buildBody(store),
    );
  }

  Widget _buildBody(SimpleValuesProvider store) {
    return Column(
      children: [
        Text("Text Value: ${store.text}"),
        ElevatedButton(onPressed: () => setRandomText(store), child: Text("Random text")),
        Text("Double Value: ${store.doubleValue}"),
        ElevatedButton(onPressed: () => setRandomDouble(store), child: Text("Random Double"))
      ],
    );
  }

  Random rnd = Random();
  void setRandomText(SimpleValuesProvider store) {
    store.setText("Random Text ${rnd.nextInt(12345)}");
  }

  void setRandomDouble(SimpleValuesProvider store) {
    store.setDouble(rnd.nextDouble());
  }
}
