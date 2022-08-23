import 'package:fl_componentes/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(), 
      initialRoute: 'home' ,
      routes: {
       'listView1': (BuildContext context) => const Listview1Screen (),
       'listView2': (BuildContext context) => const Listview2Screen (),
       'Alert'    : (BuildContext context) => const AlertScreen (),
       'Card'     : (BuildContext context) => const CardScreen (),
       'home'     : (BuildContext context) => const HomeScreen(),
      },

      onGenerateRoute:(settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen(),); 
      },
    );
  }
}