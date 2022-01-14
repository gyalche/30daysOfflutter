import 'package:day_1/model/cart.dart';
import 'package:day_1/model/catalog.dart';
import 'package:day_1/utils/home_widgets/add_to_cart.dart';
import 'package:day_1/utils/homedetail_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../themes.dart';
// import '../catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModel.items.length,
      itemBuilder: (context, index){
        // final catalog=catalogModel.items[index];
        final catalog=catalogModel.items[index];
        return InkWell(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog))),
          child: CatalogItem(
            catalog: catalog
            ));
      }
      );
      
    
  }
}
class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({ Key? key, required this.catalog }) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) { 
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image
              ),
          ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                catalog.name.text.color(MyTheme.darkBluishColor).lg.bold.make(),

                // catalog.description.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  // buttonPadding: Vx.mOnly(right: 16),
                  buttonPadding: Vx.mH8,
                  
                  children: [
                    "\$${catalog.price}".text.color(context.accentColor).bold.xl.make(),
                    AddToCart(catalog: catalog,)
                  ],
                ).pOnly(right:8.0)
              ],
            ))
        ],
      )
    ).color(context.cardColor).rounded.color(Colors.black).square(150).make().py(16);
      
    
  }
}

