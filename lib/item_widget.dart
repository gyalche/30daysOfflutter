import 'package:day_1/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item ittm;

  const ItemWidget({Key? key,required this.ittm}) 
    :assert(ittm!=null),
    super(key: key);
  // const ItemWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      elevation: 0.2,
      child: ListTile(
        leading: Image.network(ittm.image),
        title: Text(ittm.name),
        subtitle: Text(ittm.description),
        trailing: Text(
          "\$${ittm.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold
          ),
          
        ),
      onTap: (){
        print("${ittm.name} pressed");
      },
    
      ),
    );
  }
}

// class ItemWidget extends StatelessWidget {
//   final Item item;
//   const ItemWidget({ Key? key, required this.item})
//    : assert(item!=null),
//    super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Image.network(item.image),
//         title: Text(item.name),
//         subtitle: Text(item.description),
//         trailing: Text("\$${item.price}"),
    
//       ),
//     );
//   }
// }