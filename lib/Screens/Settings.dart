
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pcmc/Screens/Home.dart';
import 'package:pcmc/Screens/Settings.dart';
import 'package:pcmc/Screens/About.dart';
import 'package:pcmc/main.dart';
class MySettingsPage extends StatefulWidget {
  const MySettingsPage({Key? key}) : super(key: key);
  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Settings',
      home: Scaffold( resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Settings',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.amber)),
          toolbarHeight: 90,backgroundColor: Colors.black12,
        ),
        //Top App Bar end

        body: Center(child: Column(children: <Widget>[

          Container(
            margin: EdgeInsets.all(20),
            width: 400,
            child:ElevatedButton(

                onPressed: ()=>{},
                style: TextButton.styleFrom(
                  primary: Colors.black,  //Text Color
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                ),
                child: const Text("Connect new Pc", style: TextStyle(fontSize: 24),)

            ),
          ),



          Container(
            margin: EdgeInsets.all(20),
            width: 400,
            child:ElevatedButton(

                onPressed: ()=>{},
                style: TextButton.styleFrom(
                  primary: Colors.black,  //Text Color
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                ),
                child: const Text("Report Problem", style: TextStyle(fontSize: 24),)

            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 400,
            child:ElevatedButton(

                onPressed: ()=>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyAboutPage()),
                ),
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,  //Text Color
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.fromLTRB(50, 30, 50, 30),//Button Background Color
                ),
                child: const Text("About", style: TextStyle(fontSize: 24),)

            ),
          ),

        ]

        )),














      ),



    );

  }
}
