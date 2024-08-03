import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://img.freepik.com/premium-vector/girl-with-flowers-her-hair-vector-illustration-beige-background_194708-2465.jpg";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(

          children: [

            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,

                child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Avni Patel'),
              accountEmail: Text('avni@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),

                //child: Image.network(imageUrl),
            ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                )),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text('Home', style: TextStyle(color:Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.white,),
              title: Text('Profile', style: TextStyle(color:Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.white,),
              title: Text('Email', style: TextStyle(color:Colors.white),),
            ),
          ],

        ),
      ),
    );
  }

}