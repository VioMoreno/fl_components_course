import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding (
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
          child: Column(
            children: const [
              CustomImputField(labelText: 'Nombre', hintText: 'Nombre del usuario', helperText: 'Solo texto', counterText: '3 caracteres minimo',),
              SizedBox (height: 30), 

              CustomImputField(labelText: 'Apellido', hintText: 'Apellido del usuario', helperText: 'Solo texto', counterText: '3 caracteres minimo',),
              SizedBox (height: 30),
              
              CustomImputField(labelText: 'Email', hintText: 'Email del usuario', helperText: 'Solo texto', counterText: '3 caracteres minimo', keyboardType: TextInputType.emailAddress,),
              SizedBox (height: 30),

              CustomImputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,), 
              SizedBox (height: 30),
            ],  
          ),
          ),
      )
    );
  }
}

