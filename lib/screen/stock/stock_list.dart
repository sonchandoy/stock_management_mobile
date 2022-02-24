import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StockList extends StatefulWidget {
  const StockList({Key? key}) : super(key: key);

  @override
  _StockListState createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Stock Lists'),
    ));
  }
}
