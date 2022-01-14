import 'package:day_1/model/catalog.dart';
import 'package:day_1/themes.dart';
import 'package:day_1/utils/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({ Key? key, required this.catalog }) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
         backgroundColor: Colors.transparent,
        //  iconTheme: IconThemeData(color: Colors.white),
      ),
     backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl2.bold.red500.make(),
            AddToCart(catalog: catalog).wh(120, 50)
          ],
        ).p12(),
      ),
      body: SafeArea(
        bottom: false,
        // child: SingleChildScrollView(
          child: Column(
            children:[
              
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image).pOnly(top: 10),
                
                ).h32(context),
                Expanded(
                  child: VxArc(
                    height: 30,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.color(context.accentColor).xl4.bold.make(),
                        "\$${catalog.price}".text.xl2.bold.make().py12(),
                        4.heightBox,
                        "Ever not within the in and time like his. Flatterers said did name times mine and thence had, to dome.".text.make().p8()
                      ],
                    ).py64(),
                  ),
                  ))
            ]
          ),
        // ),
      )
    );
  }
}