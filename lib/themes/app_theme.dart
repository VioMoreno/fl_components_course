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
        )
      ); 

}