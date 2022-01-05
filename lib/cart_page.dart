import 'package:day_1/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // iconTheme: IconThemeData(color: Colors.white),
        title: "Cart".text.color(Colors.black).make().centered(),
      ),
      //vstack is a column
      body: Column(
        children: [
          const _cartList().p32().expand(),
          const Divider(color: Colors.blue, thickness: 3,),
          const _cartTotal(),
        ],
      ),
    );
  }
}
class _cartTotal extends StatelessWidget {
  const _cartTotal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl3.color(Colors.black).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Vx.purple500)
            ),
            child: "Buy".text.white.make()
            ).wOneThird(context)
          
        ],
      ),
    );
  }
}
class _cartList extends StatefulWidget {
  const _cartList({ Key? key }) : super(key: key);

  @override
  __cartListState createState() => __cartListState();
}

class __cartListState extends State<_cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index)=>
        ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: (){},
             icon: Icon(Icons.remove_circle_outline),
             ),
             title: "item 1".text.make(),
        )
      
    );
  }
}