import 'package:day_1/model/catalog.dart';
import 'package:day_1/themes.dart';
import 'package:day_1/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'item_widget.dart';
import 'dart:convert';// it gives json decoder and incoder
import 'package:velocity_x/velocity_x.dart';// velocity added
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days=25;

  final String name="Dawa";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    
  }
  loadData() async{
    await Future.delayed(Duration(seconds:2));
    //to take out the json data we have to use rootBundle
    final catalogJson=await rootBundle.loadString("assets/files/catalog.json");
    final decodedData=jsonDecode(catalogJson);
    var productData=decodedData["products"];
    
    catalogModel.items =List.from(productData).map<Item>((ittm) => Item.fromMap(ittm)).toList();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    
    // final dummyList= List.generate(4, (index)=>catalogModel.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(catalogModel.items!=null && catalogModel.items.isNotEmpty)
                CatalogList().expand()
              
              else
                Center(child: CircularProgressIndicator(),)

              
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   // backgroundColor: Colors.white,
      //   // elevation: 0.0,
      //   // iconTheme: IconThemeData(color: Colors.black;),
      //   title: Text("catalog app", style: GoogleFonts.aBeeZee(color: Colors.black),),
      //   // leading: Positioned(
      //   //   left: 300,
      //   //   // child: IconButton(onPressed: (){
      //   //   //   Navigator.of(context).pop();
      //   //   // }, 
      //   //   // icon: Icon(Icons.arrow_back, color: Colors.white,)),
      //   // ),
      // ),
      // drawer: MyDrawer(),
      
      // // body: Center(
      // //   child: Container(
      // //   child: Text("Welcome to $days days of $name youtube class ")
        
      // //   ,),
      // // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   // child:(catalogModel.items!=null && catalogModel.items.isNotEmpty)? ListView.builder(
      //   //   // itemCount: catalogModel.items.length,
      //   //   itemCount: catalogModel.items.length,
      //   //   itemBuilder: (context, index){
      //   //     // return ItemWidget(ittm: catalogModel.items[index],);
      //   //     return ItemWidget(
      //   //       ittm: catalogModel.items[index],
      //   //     );
      //   //   },
      //   // ):Center(child: CircularProgressIndicator(),
      //   // ), 

      //   //USING GRIDVIEW INSTEAD OF LISTVIEW.BUILDER
      //   child: (catalogModel.items!=null&&catalogModel.items.isNotEmpty)?
      //   GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 15,
      //     mainAxisSpacing:15,
      //     ),
      //    itemBuilder: (context, index){
      //      final item=catalogModel.items[index];
      //      return Card(
      //        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //        clipBehavior: Clip.antiAlias,
      //        child: GridTile( 
      //          header: Container(
      //            child: Text(item.name, style: TextStyle(color: Colors.white),),
      //            padding: const EdgeInsets.all(12),
      //            decoration: BoxDecoration(color: Colors.deepPurple),
      //            ),
      //          child: Image.network(item.image),
      //          footer: Container(
      //            child: Text(item.price.toString(), style: TextStyle(color: Colors.white),),
      //            padding: EdgeInsets.all(12),
      //            decoration: BoxDecoration(
      //              color: Colors.black
      //            ),
      //            ),
      //          )
      //     );
      //    },
      //    itemCount: catalogModel.items.length,
      //   ):Center(
      //     child: CircularProgressIndicator(),
      //   )
      
      // ),
      
    );
  }
}
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
              "Trending Products".text.xl2.make()
            ],
    );
  }
}
class CatalogList extends StatelessWidget {
  const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModel.items.length,
      itemBuilder: (context, index){
        final catalog=catalogModel.items[index];
        return CatalogItem(catalog: catalog);
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
          CatalogImage(
            image: catalog.image
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
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(onPressed: (){}, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                    child: "Buy".text.make())
                  ],
                )
              ],
            ))
        ],
      )
    ).white.rounded.square(150).make().py(16);
      
    
  }
}
class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({ Key? key, required this.image }) :assert (image!=null),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image
      ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}
