import 'package:flutter/material.dart';

import '../models/catelog.dart';

class ItemWidget extends StatelessWidget{

  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        onTap: (){
          print('item pressed');
        },
        leading:Image.network(item.image) ,
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}", style: TextStyle(color: Colors.blue, fontSize: 18),),
      )
    );
  }

}