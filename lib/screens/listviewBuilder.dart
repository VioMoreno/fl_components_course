

import 'package:fl_componentes/screens/screens.dart';
import 'package:fl_componentes/themes/app_theme.dart';


class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List <int> imagesIDs = [1,2,3,4,5,6,7,8,9,10]; 
  final ScrollController scrollController = ScrollController(); 
  bool isLoading = false; 

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() { 
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
      //add5(); 
      fetchData(); 
    }
    }); 

  }

  Future fetchData() async {
    if (isLoading) return; 

    isLoading = true; 
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add5(); 
    isLoading = false; 
    setState(() {});


    if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return; 
    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.fastOutSlowIn
      );

  }

  void add5(){
    final lastID = imagesIDs.last; 
    imagesIDs.addAll(
      [1,2,3,4,5].map((e) => lastID + e)
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; 

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,

        child: Stack(
          children: [
            ListView.builder(
              controller: scrollController,
              itemCount: imagesIDs.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/jar-loading.gif'), 
                  image: NetworkImage ('https://picsum.photos/500/300?image=${imagesIDs[index]}'),
                  );
              },
            ),

          if (isLoading)
            Positioned (
              bottom: 30,
              left: size.width *0.5 - 20 ,
              child: const _LoadingIcon())

          ],
        ),
      ),
      
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,

      ),
      child: const CircularProgressIndicator(color: AppTheme.primary),
    );
  }
}