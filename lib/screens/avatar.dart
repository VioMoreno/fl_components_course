import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 228, 82, 82),
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage ('https://media.gq.com.mx/photos/628fa385818a4e933c2bb42e/1:1/w_1383,h_1383,c_limit/Marvel-To-Digitally-Resurrect-Stan-Lee-Culture-627159542.jpg'),
         ),
      ),
    );
  }
}