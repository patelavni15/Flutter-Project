import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/models/catelog.dart';
import 'package:project1/widget/drawer.dart';
import 'dart:convert';


import '../widget/itemWidget.dart';

class HomePage extends StatefulWidget {

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    loadData();

  }
  
  loadData() async{
   var catelogJson =await rootBundle.loadString("assets/files/product.json");
   //print(catelogJson);
    var decodeData = jsonDecode(catelogJson);
   // print(decodeData);
    var productsData = decodeData["products"];
    CatelogModel.items = List.from(productsData).map<Item>((items)=> Item.fromJson(items)).toList();
    print(CatelogModel.items);
   setState(() {

   });
}

  @override
  Widget build(BuildContext context) {
    //final dummyList = List.generate(10, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Categoty', style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(item: CatelogModel.items[index],);
          },
          itemCount: CatelogModel.items.length),
      drawer: MyDrawer(),

    );
  }

}