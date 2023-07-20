import 'package:catalog_app/Models/productModel.dart';
import 'package:catalog_app/widgets/homewidgets/catalogButtonBar.dart';
import 'package:catalog_app/widgets/thems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'home_details_screen.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key, required this.catalog})
      : assert(
          catalog != null,
        ),
        super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.red800.xl5.bold.make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Mytheme.darkBluishColor),
                    shape: const MaterialStatePropertyAll(
                      StadiumBorder(),
                    )),
                child: "Add To Cart".text.make())
          ],
        ).p16(),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
                    tag: catalog.id.toString(),
                    child: Image.network(catalog.Image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    catalog.name.text.xl5.bold
                        .color(Mytheme.darkBluishColor)
                        .make(),
                    catalog.desc.text.lg.textStyle(context.captionStyle).make(),
                    catalog.details.text.lg
                        .textStyle(context.captionStyle)
                        .make()
                        .p12(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
