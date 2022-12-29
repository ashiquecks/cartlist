import 'package:cartlist/RESOURCE/colorFile.dart';
import 'package:cartlist/WIDGETS/cardWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ProductList",
          style: TextStyle(color: colorWhite),
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: ((context, index) {
          return const ProductCardWidget();
        }),
      ),
    );
  }
}
