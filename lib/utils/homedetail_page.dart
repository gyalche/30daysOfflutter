import 'package:day_1/model/catalog.dart';
import 'package:day_1/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({ Key? key, required this.catalog }) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.xl2.bold.make(),
          ElevatedButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(MyTheme.darkBluishColor),
            shape: MaterialStateProperty.all(StadiumBorder())
          ),
           child: "Buy".text.make()
          ).w20(context)
        ],
      ).p12(),
      body: SafeArea(
        bottom: false,
        // child: SingleChildScrollView(
          child: Column(
            children:[
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
                
                ).h32(context).py(12),
                Expanded(
                  child: VxArc(
                    height: 30,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold.make(),
                        "\$${catalog.price}".text.xl2.bold.make().py12()
                      ],
                    ),
                  ).py64(),
                  ))
            ]
          ),
        ),
      
    );
  }
}