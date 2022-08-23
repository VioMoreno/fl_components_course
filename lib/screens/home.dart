import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 216, 47, 35),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title:  const Text('Nombre de Ruta'),
          leading: const Icon(Icons.place_rounded),
          onTap: () {

            // final route = MaterialPageRoute(builder: (context) => const Listview2Screen());
            // Navigator.push(context, route); 

            Navigator.pushNamed(context, 'Card'); 

          },
          ),
        separatorBuilder: ((_, __) => const Divider()), 
        itemCount: 10)
    );
  }
}