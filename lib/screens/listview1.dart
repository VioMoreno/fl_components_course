
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const ['Spiderman', 'Eternals', 'Doctor Strange', 'Shang-Chi']; 
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Tipo 1'), backgroundColor: const Color.fromARGB(255, 216, 47, 35),),
      body: ListView(
        children: [
         
          ...options.map((game) => ListTile(
            leading: const Icon(Icons.movie_creation_outlined, color: Color.fromARGB(255, 216, 47, 35)) ,
            title: Text(game),
            trailing: const Icon (Icons.arrow_forward_ios)
          )).toList() 

          
        ],
      )
    );
  }
}
