import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect();
  }
}
