import 'package:flutter/material.dart';
import 'package:pcmc/Screens/Home.dart';
class CustomSearchDelegate extends SearchDelegate{


  List<String> alldata=[


    'PowerPoint','Windows','Camera','Facebook',
    'Music','My Computer','MS Word','Youtube','My Playlist',
    'Chrome','File','Illustrator','MS Excel','Microsoft Store',
    'Photoshop','Visual Studio','Unity','U Torent',
    'Code','WatsApp','Blender','Android Studio','Weather',
    'WinRar','Nvidia',
  ];

  @override
  List<Widget>buildActions(BuildContext context){

    return[

      IconButton(
        icon: const Icon(Icons.clear),
        color: Colors.black,

        onPressed: () {
          query = '';
        },
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String>matchQuerry=[];
    for(var apps in alldata){
      if(apps.toLowerCase().contains(query.toLowerCase())){
        matchQuerry.add(apps);
      }
    }
    return ListView.builder(
      itemCount: matchQuerry.length,
      itemBuilder: (context,index){
        var result=matchQuerry[index];
        return ListTile(
          leading: Icon(Icons.app_registration),

          title: Text(result),

          onTap:(){
            if(alldata=='PowerPoint'){
                  MyHomePage();
            }

          },
        );
      },
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String>matchQuery=[];
    for(var item in alldata){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder:(context, index) {
        var result=matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      }
    );
  }


}