
import 'package:fl_componentes/widgets/customcard2.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Card Widget'), 
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 5),
          CustomCardType2(name: 'lindo paisaje', imageUrl: 'https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg'),
          SizedBox(height: 5),
          CustomCardType2(imageUrl:'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg'),
          SizedBox(height: 5),
          CustomCardType2 (imageUrl: 'https://www.nationalgeographic.com.es/medio/2022/01/05/waterfall-and-baobab-tree_3887ddc0_2000x1333.jpg'),
        ],
      )
    );
  }
}

