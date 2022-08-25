import 'package:fl_componentes/screens/screens.dart';
import 'package:fl_componentes/themes/app_theme.dart';







class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(15)),
      elevation: 50,
      shadowColor: AppTheme.primary.withOpacity(0.2),
      child: Column(
        children: [
        
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300,),
            ),

            Container(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10) ,
              alignment: AlignmentDirectional.centerEnd,
              child: const Text('Lindo paisaje'))


        ],
      ),
    ); 
  }
}