class CatelogModel{
  static  List<Item>items = [
    Item(id: "6",
        name: "iphone 12",
        desc: "Apple phone",
        price: "999",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcRdC3h_S5_EAykyx8tAHHcbqriVawCo4hig&s"),

  ];
}
class Item{
  final String id;
  final String name;
  final String desc;
  final String price;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price,  required this.image});

  factory Item.fromJson(Map<String, dynamic>map){
   return Item(
      id:map["id"],
      name:map["name"],
     desc:map["desc"],
     price:map["price"],
     image:map["image"]
    );
  }

  toMap()=> {
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "image":image
  };
}
