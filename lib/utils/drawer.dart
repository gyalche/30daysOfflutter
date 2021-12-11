import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl=
    "https://www.google.com/search?q=haha+photo&sxsrf=AOaemvJmbmpjIdhKMgTLjE5fDWMPf39xkg:1639238951615&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj_qqb7kNz0AhWCd94KHVfiBI0Q_AUoAXoECAEQAw&biw=638&bih=559&dpr=1.5#imgrc=iSzRJLVLFvL6sM";
    return Drawer(
      child: Container(
        color: Colors.blue.shade100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
            
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            accountName: Text("Dawa Shepa"),
            accountEmail: Text("fupulamu01@gmail.com"),
            // currentAccountPicture: Image.network(imageUrl),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl), backgroundColor: Colors.blue),
            )),
           ListTile(
             leading: Icon(CupertinoIcons.home, color:Colors.black),
             title: const Text("Home", textScaleFactor: 1.2,),
           ),
           ListTile(
             leading: Icon(CupertinoIcons.person, color: Colors.black,),
             title: const Text("Dawa Sherpa", textScaleFactor: 1.2,),
           ),
           ListTile(
            //  onTap: (){
            //    Navigator.pushNamed(context, MyRoutes.loginRoute);
            //  },
             leading: Icon(CupertinoIcons.mail, color: Colors.black,),
             title: const Text("Fupulamu01@gmail.com", textScaleFactor: 1.2,),
           )
          ],
        ),
      ),
    );
  }
}
