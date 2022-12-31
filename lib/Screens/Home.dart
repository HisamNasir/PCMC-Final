
import 'dart:io';
import 'dart:ui';
import 'package:pcmc/main.dart';
import 'package:flutter/material.dart';
import 'package:pcmc/Screens/Settings.dart';

import 'MySearchpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex=0;
  final screens=[
    MyHomePage(),
    MySettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold( resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('PCMC',style: TextStyle(fontSize: 40,fontWeight: FontWeight.normal,color: Colors.amber)),
          toolbarHeight: 90,backgroundColor: Colors.black12,
        ),
        //Top App Bar end



        backgroundColor: Colors.blueGrey,

        //Body paddings
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children:<Widget>[
                Container(
                    child:Text('Group Section', style: TextStyle(fontSize: 20,height: 2,color: Colors.white),)

                ),

                Container(

                  child: Column(
                    children: [
                      SizedBox(
                          height: 100,

                          child: ListView(scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                SizedBox(width: 10.0),
                                SizedBox(width: 10.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [

                                      OutlinedButton(

                                          onPressed: ()=>{

                                          },
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,  //Text Color
                                            backgroundColor: Colors.amber,

                                            padding: EdgeInsets.fromLTRB(50, 30, 50, 30),

                                            //Button Background Color
                                          ),
                                          child: const Text("Home Profile")

                                      ),
                                      Container(
                                        width: 22,
                                      ),
                                      OutlinedButton(

                                          onPressed: ()=>{},
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,  //Text Color
                                            backgroundColor: Colors.amber,
                                            padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                                          ),
                                          child: const Text("Work")

                                      ),
                                      Container(
                                        width: 22,
                                      ),
                                      OutlinedButton(

                                          onPressed: ()=>{},
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,  //Text Color
                                            backgroundColor: Colors.amber,
                                            padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                                          ),
                                          child: const Text("Essentials")

                                      ),
                                      Container(
                                        width: 22,
                                      ),
                                      OutlinedButton(

                                          onPressed: ()=>{},
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,  //Text Color
                                            backgroundColor: Colors.amber,
                                            padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                                          ),
                                          child: const Text("Gym")

                                      ),
                                      Container(
                                        width: 22,
                                      ),
                                      OutlinedButton(

                                          onPressed: ()=>{},
                                          style: TextButton.styleFrom(
                                             //Text Color
                                            primary: Colors.black,  //Text Color
                                            backgroundColor: Colors.amber,
                                            padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                                          ),
                                          child: const Text("Etertainment"),

                                      ),
                                      Container(
                                        width: 22,
                                      ),


                                    ],

                                  ),
                                ),

                              ]
                          )



                      ),
                    ],
                  ),
                ),
                Container(
                    child:Divider(height: 7,thickness: 1,color: Colors.black12)
                ),
                Container(
                    child:Text('Quick Select', style: TextStyle(fontSize: 20,height: 2,color: Colors.white),)
// zabc
                ),
                SizedBox(
                  height: 455,
                  child:Container(
                      padding: const EdgeInsets.all(20) ,
                      width: double.maxFinite,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 30,
                            crossAxisSpacing: 20),
                        children: [
                          InkWell(
                            onTap: (){
                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/powerpoint.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/windows.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/cam.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/fb.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/music.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/fil.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/word.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/yt.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/ytmusic.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/ch.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/fil.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/illu.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/me.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/ms.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/ps.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/sc1.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/u.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/ut.png',width: 50,),
                                ],),
                            ),
                          ),




                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/vs.png',width: 50,),
                                ],),
                            ),
                          ),






                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/wa.png',width: 50,),
                                ],),
                            ),
                          ),





                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/bln.png',width: 50,),
                                ],),
                            ),
                          ),





                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/as.png',width: 50,),
                                ],),
                            ),
                          ),





                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/we.png',width: 50,),
                                ],),
                            ),
                          ),





                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/rar.png',width: 50,),
                                ],),
                            ),
                          ),





                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/we.png',width: 66,),
                                ],),
                            ),
                          ),





                          InkWell(
                            onTap: (){

                            },
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/nv.png',width: 88,),
                                ],),
                            ),
                          ),
                        ],


                      )

                  ),

                ),
                Container(
                    child:Divider(height: 7,thickness: 1,color: Colors.black12)
                ),

              ],

            ),

          ),
        ),


        //Home Screen End















      ),



    );

  }


}


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
