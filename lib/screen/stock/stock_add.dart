import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_management/screen/input/app_textfiel.dart';
import 'package:stock_management/screen/stock/stock_list.dart';

class StockAdd extends StatefulWidget {
  const StockAdd({Key? key}) : super(key: key);

  @override
  _StockAddState createState() => _StockAddState();
}

class _StockAddState extends State<StockAdd> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _productName = TextEditingController();
  final TextEditingController _productBarcode = TextEditingController();
  final TextEditingController _productColor = TextEditingController();
  final TextEditingController _productSize = TextEditingController();
  final TextEditingController _productDescription = TextEditingController();
  final TextEditingController _productQuantity = TextEditingController();
  final TextEditingController _productPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Add'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Form(
      key: _formKey,
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      controller: _productName,
                      hintText: 'Product Name *',
                      labelText: 'Product Name *',
                      msgError: 'Product Name is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      controller: _productPrice,
                      hintText: 'Product Price *',
                      labelText: 'Product Price *',
                      msgError: 'Product Price is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      controller: _productBarcode,
                      hintText: 'Product Barcode',
                      labelText: 'Product Barcode *',
                      msgError: 'Product Barcode is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      controller: _productColor,
                      hintText: 'Product Color',
                      labelText: 'Product Color *',
                      msgError: 'Product Color is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      controller: _productSize,
                      hintText: 'Product Size *',
                      labelText: 'Product Size *',
                      msgError: 'Product Size is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      isValidator: false,
                      controller: _productDescription,
                      hintText: 'Product Description',
                      labelText: 'Product Description is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormFieldResponeWidget(
                      isValidator: false,
                      controller: _productQuantity,
                      hintText: 'Product Quantity',
                      labelText: 'ProductQuantity is required',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text("Image"),
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {}
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StockList()),
                        );
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: const Text("Save"),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 38, 163, 236),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
