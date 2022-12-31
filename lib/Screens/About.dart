
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';


import 'Home.dart';
class MyAboutPage extends StatefulWidget {
  const MyAboutPage({Key? key}) : super(key: key);
  @override
  State<MyAboutPage> createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'About',
      home: Scaffold(backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('About',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.amber)),
          toolbarHeight: 90,backgroundColor: Colors.black12,
        ),
        //Top App Bar end

        body: Center(child: Column(children: <Widget>[
          Container(
            height: 90,
          ),
          Container(
            child: Text(
              'Hi! We built this app from ground up and did all the front-end and back-end\nourself.',
              textAlign: TextAlign.center,style: TextStyle(color: Colors.amber,fontSize: 23),

            ),
          ),
          Container(
            height: 90,
          ),
          Container(
            child: Text(
              'Group Members',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amber),
              textAlign: TextAlign.center,

            ),
          ),
          Container(
            height: 40,
          ),
          Container(
            child: Text(
              'Muhammad Ishaq\n26353\n\nAbdul Basit\n29335',style: TextStyle(fontSize: 15,color: Colors.amber),
              textAlign: TextAlign.center,

            ),
          ),
        ]
        )),







      ),



    );

  }
}