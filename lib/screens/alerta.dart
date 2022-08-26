import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialog(BuildContext context) {

    showDialog(
    barrierDismissible: false,
    context: context, 
    builder: (context) {
      return AlertDialog(
        elevation: 5,
        title: const Text('Titulo'),
        shape: RoundedRectangleBorder(borderRadius:BorderRadiusDirectional.circular(10) ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10,),
            FlutterLogo(size: 50),
          ],
        ),
        actions: [
          TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text ('Cancelar'),),
        ],
      );
    });
  }


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
          onPressed: () => displayDialog(context),

         )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}