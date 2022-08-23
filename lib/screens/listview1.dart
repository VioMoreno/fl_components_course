
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const ['megaman', 'hola', 'como', 'estas']; 
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Tipo 1')),
      body: ListView(
        children: [
         
          ...options.map((game) => ListTile(
            leading: const Icon(Icons.watch_later) ,
            title: Text(game),
            trailing: const Icon (Icons.arrow_forward_ios)
          )).toList() 

          
        ],
      )
    );
  }
}
