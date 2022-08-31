
import 'package:flutter/material.dart';

class CustomImputField extends StatelessWidget {

      final String? hintText;
      final String? labelText;
      final String? helperText;
      final String? counterText; 
      final IconData? icon; 
      final IconData? suffixIcon; 
      final TextInputType? keyboardType; 
      final bool obscureText; 

      final String formProperty; 
      final Map<String, String> formvalues; 


  const CustomImputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.counterText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formvalues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType ,
      initialValue: ' ',
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      // ignore: avoid_print
      onChanged: ((value) => formvalues[formProperty] = value),
      validator: (value) {
        if (value == null) return 'Este campo es requerido'; 
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.always,
      decoration: InputDecoration (
        hintText: hintText,
        labelText: labelText, 
        helperText: helperText,
        counterText: counterText,
        //prefixIcon: Icon(Icons.shield),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),

      ),
          );
  }
}