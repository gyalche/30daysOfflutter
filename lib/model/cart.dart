import 'package:day_1/model/catalog.dart';

class CartModel{
  //catalog field
 late catalogModel _catalog;

  //store id of each item
 final List<int> _itemIds=[];

  //get catalog
 catalogModel get catalog{
   return _catalog;
 }
 //set catalog
 set catalog(catalogModel newCatalog){
   assert(_catalog!=null);
   _catalog = newCatalog;
 }
 //get items in the cart
List<Item> items=>_itemIds.map((id) => _catalog.getById(id)).toList();

//get total price
num get totalPrice{
   return items.fold(0, (total, current) => total + current.price);
}
//add item
void add(Item item){
  _itemIds.add(item.id);
}
// remove item
void remove(Item item){
  _itemIds.remove(item.id);
}
}