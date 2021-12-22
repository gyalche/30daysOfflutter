import 'dart:convert';

import 'package:flutter/material.dart';
class catalogModel{
  // we made it static because we can access directly with catalogModel
 static List<Item> items=

   [
     Item(
        id: 1, 
        name: "Iphone 12 pro",
        description: "12th gen",
        price: 1200, 
        color: "Mat black", 
        image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftech.hindustantimes.com%2Fphotos%2Fapple-iphone-13-pro-max-in-pictures-is-this-the-best-iphone-71632468915902.html&psig=AOvVaw1fbJuaLAIDJc-kk692xc_H&ust=1639506196434000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCHn9Wy4fQCFQAAAAAdAAAAABAD")
    ];
}
class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;
 
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });

  // make a constructore of Item and since data is coming form json and accor to json 
  //we wants its object

//  to decode
//  factory Item.fromMap(Map<String, dynamic> map){
//    return Item(
//      id: map["id"],
//     name: map["name"],
//      description: map["description"],
//       price: map["price"],
//        color: map["color"],
//         image: map["image"],
//   );
  
//  }
// //to encode
//       toMap()=>{
//         "id":id,
//         "name":name,
//         "description":description,
//         "price":price,
//         "color":color,
//         "image":image,
//       };
 

  Item copyWith({
    int? id,
    String? name,
    String? description,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] ?? 0,
      color: map['color'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}

