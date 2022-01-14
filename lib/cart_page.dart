
import 'package:day_1/model/cart.dart';
import 'package:day_1/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
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
    final _cart=CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl3.color(Colors.black).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet".text.make()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Vx.purple500),
              
            ),
            child: "Buy".text.xl.white.make()
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
  final _cart=CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?"Nothing to show".text.xl2.makeCentered(): ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index)=>
        ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: (){
              
                _cart.remove(_cart.items[index]);
              MotionToast.success(
                description: "sucessfully removed from cart",
                title: "sucess",
              ).show(context);
              
              
              setState(() {
                
              });
              // MotionToast.error(
              //   description:"Buying not supported",
              //   title:"error"
              // ).show(context);
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //   content: "Buying not supported yet".text.make(),
              // )
              // );
            },
             icon: Icon(Icons.remove_circle_outline),
             ),
             title: _cart.items[index].name.text.make(),
        )
      
    );
  }

 
}