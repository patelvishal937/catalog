// import 'dart:ffi';

// class CatalogModel {
//   final items = Item(
//       id: 1,
//       name: "iPhone 12 Pro",
//       desc: "Apple iPhone 12th generation",
//       price: 999,
//       color: "#33505a",
//       image:
//           "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000");
// }

// class Item {
//   final int id;
//   final String name;
//   final String desc;
//   final num price;
//   final String color;
//   final String image;

//   Item(
//       {required this.id,
//       required this.name,
//       required this.desc,
//       required this.price,
//       required this.color,
//       required this.image},);

// }
// class CatalogModel {
//   int id;
//   String name;
//   String desc;
//   String color;
//   String image;

//   CatalogModel({
//     required this.id,
//     required this.name,
//     required this.desc,
//     required this.color,
//     required this.image,
//   });
//   factory CatalogModel.fromJson(Map<String, dynamic> json) {
//     return CatalogModel(
//       id: json['id'],
//       name: json['name'],
//       desc: json['desc'],
//       color: json['color'],
//       image: json['image'],
//     );
//   }
// }
// class CatalogModel {
//   int id;
//   String name;
//   String desc;
//   String color;
//   String image;
//   int price;

//   CatalogModel({
//     required this.id,
//     required this.name,
//     required this.desc,
//     required this.color,
//     required this.image,
//     required this.price,
//   });

//   factory CatalogModel.fromJson(Map<String, dynamic> json) {
//     return CatalogModel(
//       id: json['id'],
//       name: json['name'],
//       desc: json['desc'],
//       color: json['color'],
//       image: json['image'],
//       price: json['price'],
//     );
//   }
//   toMap() => {
//         "id": id,
//         "name": name,
//         "desc": desc,
//         "color": color,
//         "image": image,
//         "price": price,
//       };
// }
class CatalogmModel {
  static List<Item> products = [];
}

class Item {
  final String name;
  final int id;
  final String desc;
  final int price;
  final String Image;
  final String color;
  final String details;

  Item(
      {required this.name,
      required this.id,
      required this.desc,
      required this.price,
      required this.Image,
      required this.color,
      required this.details});

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
        name: map["name"],
        id: map["id"],
        desc: map["desc"],
        price: map["price"],
        Image: map["image"],
        color: map["color"],
        details: map["details"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "Image": Image,
        "color": color,
        "details": details,
      };
}
