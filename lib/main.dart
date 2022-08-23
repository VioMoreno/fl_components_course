
import 'package:flutter/material.dart';
import 'package:fl_componentes/screens/listview2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Listview2Screen ()
    );
  }
}