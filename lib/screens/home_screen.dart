import 'dart:convert';
import 'package:catalog_app/Models/productModel.dart';
import 'package:catalog_app/screens/cart_screen.dart';

import 'package:catalog_app/widgets/thems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/homewidgets/catalogHeader.dart';
import '../widgets/homewidgets/catalogList.dart';
import '../utils/Routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var json = await rootBundle.loadString('assets/files/catalog.json');
    var Decode = jsonDecode(json);
    var productData = Decode["products"];
    // print(productData);
    CatalogmModel.products = List.from(productData)
        .map<Item>((products) => Item.fromMap(products))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyist = List.generate(5, (index) => CatalogmModel.products[0]);

    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      // appBar: AppBar(
      //   title: const Text('catalog App'),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView.builder(
      //       itemCount: CatalogmModel.products.length,
      //       itemBuilder: (context, index) {
      //         return Itemwidget(item: CatalogmModel.products[index]);
      //       }),
      // ),
      // drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Routes.cartRoutes),
        child: const Icon(CupertinoIcons.cart),
        backgroundColor: Mytheme.darkBluishColor,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Myheader(),
            if (CatalogmModel.products.isNotEmpty)
              const CatalogList().expand()
            else
              const CircularProgressIndicator().centered().expand().p16(),
          ],
        ),
      )),
    );
  }
}
