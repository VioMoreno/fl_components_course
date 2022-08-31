import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>(); 

    final Map <String, String> formValues = {
      'first Name': 'Violeta',
      'last Name' : 'Moreno',
      'email'     : 'viomoren3@gmail.com',
      'password'  : 'Holahola123',
      'role'      : 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),

      body: SingleChildScrollView(
        child: Padding (
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
          child: Form(

            key: myFormKey,
            child: Column(
              children:  [
                CustomImputField(labelText: 'Nombre', hintText: 'Nombre del usuario', helperText: 'Solo texto', counterText: '3 caracteres minimo', formProperty: 'first Name', formvalues: formValues,),
                const SizedBox (height: 30), 
          
                CustomImputField(labelText: 'Apellido', hintText: 'Apellido del usuario', helperText: 'Solo texto', counterText: '3 caracteres minimo',formProperty: 'last Name', formvalues: formValues),
                const SizedBox (height: 30),
                
                CustomImputField(labelText: 'Email', hintText: 'Email del usuario', helperText: 'Solo texto', counterText: '3 caracteres minimo', keyboardType: TextInputType.emailAddress,formProperty: 'email', formvalues: formValues),
                const SizedBox (height: 30),
          
                CustomImputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,formProperty: 'password', formvalues: formValues), 
                const SizedBox (height: 30),
          
                ElevatedButton(
                  onPressed: (() {
                    FocusScope.of(context).requestFocus(FocusNode()); 

                    if (!myFormKey.currentState!.validate()){
                      return; 
                    }
                    print(formValues);

                  }),
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center (child: Text('Guardar'))), 
                  )
              ],  
            ),
          ),
          ),
      )
    );
  }
}

