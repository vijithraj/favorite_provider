 import 'package:favorite_provider/cart_page.dart';
import 'package:favorite_provider/provide_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List name=[
    "time",
    "year",
    "people",
    "way",
    "day",
    "man",
    "think",
    "woman",
    "life",
    "child",
    "world",
    "school"
  ];

  @override
  Widget build(BuildContext context) {
    final object=Provider.of<Provider_class>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("English World",
      style: TextStyle(fontSize: 25,color: Colors.white),),
      backgroundColor: Colors.cyan,),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: name.length,
          itemBuilder:(BuildContext context, int index){
           return ListTile(
             title: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(name[index],style: TextStyle(fontSize: 25,color:
               Colors.black),),
             ),
             trailing: IconButton(
               icon: object.icn_change(name[index])
                   ? Icon(Icons.favorite,
                   color: Colors.red)
                   : Icon(Icons.favorite_border,color: Colors.blue),
               onPressed: () {
                 object.favorites(name[index]);
               },
             ),
           );



          }),
    floatingActionButton: FloatingActionButton.extended(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context)=>Cart()));
    },
    label: const Text('Favorites'),
    icon: const Icon(Icons.thumb_up),
    backgroundColor: Colors.cyan)
    );
  }
}
