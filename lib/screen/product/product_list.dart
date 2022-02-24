import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_management/screen/product/model.dart';
import 'package:stock_management/screen/product/product_add.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      floatingActionButton: _buildFloating(),
      body: _buildBody(),
    );
  }

  Widget _buildFloating() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductAdd()),
        );
      },
      child: const Icon(Icons.add),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.grey[200],
      child: ListView.builder(
          itemCount: productModels.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                //margin: EdgeInsets.only(bottom: 10.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        productModels[index].imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              productModels[index].name,
                              style: const TextStyle(
                                  fontSize: 22.0, color: Colors.green),
                            ),
                            Text(
                              productModels[index].description,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            Text(
                              productModels[index].price,
                              style: const TextStyle(
                                  fontSize: 22.0, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
