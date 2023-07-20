import 'package:flutter/material.dart';
import 'package:catalog_app/Models/productModel.dart';

// class ItemWidget extends StatelessWidget {
//   final List<CatalogModel> cataloglist;
//   ItemWidget({required this.cataloglist});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: cataloglist.length,
//       itemBuilder: (context, index) {
//         CatalogModel catalog = cataloglist[index];
//         return Card(
//           margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ListTile(
//               onTap: () {
//                 print(catalog.name);
//               },
//               contentPadding: const EdgeInsets.all(0),
//               leading: AspectRatio(
//                 aspectRatio: 1,
//                 child: Image.network(
//                   catalog.image,
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               title: Text(catalog.name),
//               subtitle: Text(catalog.desc),
//               trailing: Text(
//                 "\$${catalog.price.toString()}",
//                 textScaleFactor: 1.5,
//                 style: const TextStyle(
//                   color: Colors.deepPurple,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
class Itemwidget extends StatelessWidget {
  final Item item;
  // const Itemwidget({super.key, required this.item})

  //     : assert(
  //         item != null,
  //       );
  const Itemwidget({Key? key, required this.item ,}) : super(key: key);
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Image.network(item.Image),
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
