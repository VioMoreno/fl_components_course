import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max:400,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: ((value) {
                _sliderValue = value; 
                setState(() {});
              })),
      
               Image(
                image: const NetworkImage ('https://i.pinimg.com/736x/74/b1/8f/74b18fb795cc4b825967294441e7db03.jpg'),
                width: _sliderValue,
                fit: BoxFit.contain,
              ),

              const SizedBox (height: 50,)
          ],
        ),
      )
    );
  }
}