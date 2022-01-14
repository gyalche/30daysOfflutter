import 'package:day_1/model/cart.dart';
import 'package:day_1/model/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import '../../themes.dart';

class AddToCart extends StatefulWidget {
 final Item catalog;
  const AddToCart({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  
   final _cart=CartModel();
  @override
  Widget build(BuildContext context) {
     bool isInCart=_cart.items.contains(widget.catalog)??false;
    return ElevatedButton(onPressed: (){
      if(!isInCart){
      isInCart=isInCart.toggle();
      final _catalog=catalogModel();
     
      _cart.catalog=_catalog;
      _cart.add(widget.catalog);
      setState(() {
        
      });
      }
    }, 
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
      shape: MaterialStateProperty.all(StadiumBorder())
    ),
    child: isInCart?Icon(Icons.done): "Add".text.make(),
    );
  }
}