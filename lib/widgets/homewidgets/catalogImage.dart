import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../thems.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .make()
        .color(Mytheme.creamColor)
        .p16()
        .w40(context);
  }
}
