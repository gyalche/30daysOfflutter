import 'package:flutter/material.dart';
class catalogModel{
  // we made it static because we can access directly with catalogModel
 static final items=
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
class Item{
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;
 
  Item({required this.id, required this.name, required this.description,
   required this.price, required this.color, required this.image});

  
}

