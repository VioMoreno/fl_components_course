import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: true,
                initialValue: ' ',
                textCapitalization: TextCapitalization.words,
                // ignore: avoid_print
                onChanged: ((value) => print ('value: $value')),
                validator: (value) {
                  if (value == null) return 'Este campo es requerido'; 
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration (
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre', 
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                  //prefixIcon: Icon(Icons.shield),
                  suffixIcon: Icon(Icons.group, color: Colors.black),
                  icon: Icon(Icons.self_improvement_sharp, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
                  )


                ),
          )],
          ),
          ),
      )
    );
  }
}