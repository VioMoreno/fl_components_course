

import 'package:fl_componentes/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home'; 

  static final menuOptions = <MenuOption> [
   // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_rounded),
    MenuOption(route: 'listview1', icon: Icons.list_sharp, name: 'ListView Tipo1', screen: const Listview1Screen()), 
    MenuOption(route: 'listview2', icon: Icons.format_list_numbered_rounded, name: 'Listview Tipo2', screen: const Listview2Screen()), 
    MenuOption(route: 'Alert', icon: Icons.add_alert_rounded, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'Card', icon: Icons.credit_card_outlined, name: 'Tarjetas - Cards', screen: const CardScreen()),
    MenuOption(route: 'Avatar', icon: Icons.supervisor_account_rounded, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'Animated', icon: Icons.play_circle_filled_outlined, name: 'Animated Container', screen: const AnimatedScreen())
  ]; 


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {}; 

    for (final option in menuOptions) {
      appRoutes.addAll({ 
        'home': (BuildContext context) => const HomeScreen(),
      }); 
    }

    return appRoutes; 
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //     'listView1': (BuildContext context) => const Listview1Screen (),
  //     'listView2': (BuildContext context) => const Listview2Screen (),
  //     'Alert'    : (BuildContext context) => const AlertScreen (),
  //     'Card'     : (BuildContext context) => const CardScreen (),
  //     'home'     : (BuildContext context) => const HomeScreen(),
  // }; 

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          ); 
  }


}