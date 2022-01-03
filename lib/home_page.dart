import 'package:day_1/model/catalog.dart';
import 'package:day_1/themes.dart';
import 'package:day_1/utils/drawer.dart';
import 'package:day_1/utils/home_widgets/catalog_header.dart';
import 'package:day_1/utils/home_widgets/catalog_list.dart';
import 'package:day_1/utils/routes.dart';
import 'package:flutter/cupertino.dart';
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
      // backgroundColor: MyTheme.creamColor,
      //IF you dont use velocity x then
          // backgroundColor:MyTheme.of(context).cardColor
      backgroundColor:context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        // backgroundColor: context.theme.buttonColor,
        backgroundColor: MyTheme.darkBluishColor,
        child: Icon(CupertinoIcons.cart, color: Colors.white,),
      ),
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
                 CircularProgressIndicator().centered().py16().expand(),

              
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





