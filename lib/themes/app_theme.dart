import 'package:fl_componentes/screens/screens.dart';

class AppTheme {

static const Color primary = Color.fromARGB(255, 216, 47, 35); 

static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: const Color.fromARGB(255, 216, 47, 35),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 216, 47, 35),
          elevation: 10,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5, 
        ),
        elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 10,
           ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:primary ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:primary ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          )
)); 

}