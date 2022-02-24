import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stock_management/screen/category.dart';
import 'package:stock_management/screen/constant.dart';
import 'package:stock_management/screen/product/product_list.dart';
import 'package:stock_management/screen/search.dart';
import 'package:stock_management/screen/stock/stock_add.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Stock Management'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductList()),
                            );
                          },
                          child: CategoryCard(
                            title: "Product List",
                            svgSrc: "assets/icons/orders.svg",
                            press: () {},
                          ),
                        ),
                        InkWell(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StockAdd(),
                              ),
                            );
                          }),
                          child: CategoryCard(
                            title: "Stock In",
                            svgSrc: "assets/icons/stocks.svg",
                            press: () {},
                          ),
                        ),
                        CategoryCard(
                          title: "Purschase Entry",
                          svgSrc: "assets/icons/checkmark-male-user.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Sales Entry",
                          svgSrc: "assets/icons/for-sale-sign-board.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
