
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['WandaVision', 'MsMarvel', 'Loki', 'SheHulk']; 
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        elevation: 10, 
        backgroundColor: const Color.fromARGB(255, 216, 47, 35),

      ),
      body: ListView.separated(
       itemBuilder: (context, index) =>  ListTile(
            leading: const Icon(Icons.slow_motion_video_sharp, color: Color.fromARGB(255, 216, 47, 35)) ,
            title: Text(options [index]),
            trailing: const Icon (Icons.arrow_forward_ios),
            onTap: () {
              final game = options [index];
              print(game); 
            },),
       separatorBuilder: (_ , __) => const Divider(), 
       itemCount: options.length)
    );
  }
}
