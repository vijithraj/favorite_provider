 import 'package:favorite_provider/provide_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final object=Provider.of<Provider_class>(context);
    List namestor=object.favoritename;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("English World",
        style: TextStyle(fontSize: 25,color: Colors.white),),
        backgroundColor: Colors.cyan,),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: namestor.length,
          itemBuilder:(BuildContext context, int index){
            return ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(namestor[index],style: TextStyle(fontSize: 25,color:
                Colors.black),),
              ),
              trailing:IconButton(
                icon: object.icn_change(namestor[index])
                    ? Icon(Icons.favorite,
                    color: Colors.red)
                    : Icon(Icons.favorite_border,color: Colors.blue),
                onPressed: () {
                  object.favorites(namestor[index]);

                },),
            );
          }),

            );

  }
}
