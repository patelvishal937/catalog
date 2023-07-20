import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../thems.dart';

class Myheader extends StatelessWidget {
  const Myheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Vx.m16,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            "Catalog app"
                .text
                .xl4
                .color(Mytheme.darkBluishColor)
                .make()
                .fittedBox(),
            "Trending Products".text.xl.color(Mytheme.darkBluishColor).make(),
          ]),
    );
  }
}
