import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:test_flutter/AppDrawer.dart';
import 'package:test_flutter/main.dart';

import 'MessageDetail.dart';
import 'ListListGaye.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      var messages = const [
    {
        "subject": "My first message",
        "body" : "Nous developpons une App using Flutter. Donc pour commencer...Nous developpons une App using Flutter. Donc pour commencer..."
     },
     {
        "subject": "My second message",
        "body" : "Veuillez lire ce message svp..."
     },
     {
        "subject": "My 3rd message",
        "body" : "Gaye vous dit bonjour et vous souhaite une bonne journée"
     },
     {
        "subject": "My 4th message",
        "body" : "Salut les amis, on va devoir tout recommencer d'ici la semaine prochaine"
     },
     {
        "subject": "Nouvelle entrée avec JSON",
        "body" : "Entrée avec json pose problème avec la methode initState() qui refuse...Du coup j'ai tout mis dans le main.dart"
     },
     {
        "subject": "JSON",
        "body" : "The serialize method..."
     }
];

     return DefaultTabController(
            length: 2,
            child: Scaffold(
        appBar: AppBar(        
          title: Text('Email App'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: (){
               //On peut faire une action ici 
            })
          ],
          bottom: TabBar(tabs: <Widget>[
              Tab(text: "Important", 
              //  icon: Icon(Icons.people) 
               ),
              Tab(text: "Other")
          ]),
        ),
      
          drawer: AppDrawer(),
          body: TabBarView(
            children: [
               Center(child: Text("Important")),
               MessageList(),
           ]),
        // body:Container(),
         ),
     );
   }
}