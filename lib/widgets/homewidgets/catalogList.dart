import 'package:catalog_app/screens/home_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Models/productModel.dart';
import '../../screens/home_screen.dart';
import '../thems.dart';
import 'catalogButtonBar.dart';
import 'catalogImage.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogmModel.products.length,
        itemBuilder: (context, index) {
          final catalog = CatalogmModel.products[index];
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDetailScreen(
                        catalog: catalog,
                      ),
                    ),
                  ),
              child: CatalogItem(catalog: catalog));
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: catalog.id.toString(),
            child: ImageButton(image: catalog.Image)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.bold.color(Mytheme.darkBluishColor).make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              ButtonbarWidget(price: "\$${catalog.price}")
            ],
          ),
        )
      ],
    )).white.rounded.square(150).make().p8();
  }
}
