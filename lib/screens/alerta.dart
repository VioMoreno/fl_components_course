import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton (
          // style: ElevatedButton.styleFrom(
          //   primary: AppTheme.primary,
          //   shape: const StadiumBorder(),
          //   elevation: 10,
          // ),
          child: const Text('Mostrar alerta', style: TextStyle(fontSize: 15),) ,
          onPressed: () {
            
          },

         )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        onPressed: (() {
          Navigator.pop(context); 
        }),
        child: const Icon(Icons.close) 
      ),
    );
  }
}