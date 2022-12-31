import 'package:flutter/material.dart';
import 'package:pcmc/Screens/MySearchpage.dart';

import 'package:pcmc/Screens/Home.dart';

import 'package:pcmc/Screens/Settings.dart';

void main() {
  runApp(const MyApp());
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    _navigatertohome();
  }
  _navigatertohome()async{
    await Future.delayed(Duration(milliseconds: 3500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mybottomnavigationbar()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/Logo/logo2.png'
                  ),
                ),
              ),
            ),


            Container(

              child: Text(
                "PCMC\nBy\nIshaq\nBasit",
                style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}






//Bottom Nav Bar






//Search button
class Mybottomnavigationbar extends StatefulWidget {
  const Mybottomnavigationbar({Key? key}) : super(key: key);

  @override
  State<Mybottomnavigationbar> createState() => _MybottomnavigationbarState();


}




class _MybottomnavigationbarState extends State<Mybottomnavigationbar> {
  int _currentIndex= 0;
  final List<Widget>_children=
  [
    const MyHomePage(),
    const MySettingsPage()
  ];


  void onTappedBar(int index){
    setState(() {
      _currentIndex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        iconSize: 30,
        showUnselectedLabels: false,

        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(label:'Home',icon: Icon(Icons.home,)),
          BottomNavigationBarItem(label:'Settings',icon: Icon(Icons.settings,))

        ],

      ),




      //Floating Action button

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.amber,
        onPressed: (){
          showSearch(
            context: context,
            delegate: CustomSearchDelegate(),);
        },

        child: const Icon(Icons.search,color: Colors.black,),
      ),



    );
  }
}


