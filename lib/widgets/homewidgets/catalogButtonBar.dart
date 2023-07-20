import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../thems.dart';

class ButtonbarWidget extends StatelessWidget {
  const ButtonbarWidget({Key? key, required this.price}) : super(key: key);
  final String price;
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      children: [
        price.text.lg.bold.make(),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Mytheme.darkBluishColor),
                shape: const MaterialStatePropertyAll(
                  StadiumBorder(),
                )),
            child: "Add to Cart".text.make())
      ],
    );
  }
}
