//Auteur : Amadou GAYE

// import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:json_annotation/json_annotation.dart';

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_flutter/App.dart';
// import 'package:flutter/services.dart';

// import 'package:http/http.dart' as http;
import 'package:test_flutter/ComposeButton.dart';
import 'package:test_flutter/MessageDetail.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


// import 'MessageCompose.dart';

void main() => runApp(EmailApp());

class EmailApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData( primarySwatch: Colors.green,),
      home: App(),
    );
  }
}

class MessageList extends StatefulWidget {
    
  // final String title;
  
  // MessageList({this.title});
  
  @override
  State<StatefulWidget> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {

  @override
  Widget build(BuildContext context) {
    
    var messages = const [
    {
        "subject": "My first message",
        "body" : "Nous developpons une App using Flutter. Donc pour commencer...Nous developpons une App using Flutter. Donc pour commencer...",
         "status": "other",
     },
     {
        "subject": "My second message",
        "body" : "Veuillez lire ce message svp...",
         "status": "other",
     },
     {
        "subject": "My 3rd message",
        "body" : "Gaye vous dit bonjour et vous souhaite une bonne journée",
         "status": "other",
     },
     {
        "subject": "My 4th message",
        "body" : "Salut les amis, on va devoir tout recommencer d'ici la semaine prochaine",
        "status": "other",
     },
     {
        "subject": "Nouvelle entrée avec JSON",
        "body" : "Entrée avec json pose problème avec la methode initState() qui refuse...Du coup j'ai tout mis dans le main.dart",
        "status": "other",
     },
     {
        "subject": "JSON",
        "body" : "The serialize method...",
        "status": "other",
     }
];
     
    // List<MessageList> message = [];

    // Future<dynamic> loadMessageList() async{
      
    //   http.Response response = await http.get('http://www.mocky.io/v2/5eab1f903300005400760738');
      
      // String content = response.body;
      // List collection  = json.decode(content);
      // List<MessageList> _messages =    
      // collection.map((json) => message.fromJson(json)).toList();

    //   var content = await rootBundle.loadString('data/message.json');
    //   var collection = json.decode(content);
    //   setState(() {
    //     messages = collection;
    //   });

    //   print(content);
      
    //   void initState() {
    //     loadMessageList();
    //     super.initState();
    // }  
    // }

    return Scaffold(
      // appBar: AppBar(        
      //   title: Text('Email App'),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.refresh), onPressed: (){
      //        //On peut faire une action ici 
      //     })
      //   ],
      // ),
 
      body:ListView.builder(
        itemCount: 6,
        // separatorBuilder: (Context, index) => Divider(),
        itemBuilder: (BuildContext context, int index){
          var message = messages[index];
            return Slidable(
            
               actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                // child: Container(
                //   color: Colors.white,
                //   child: ListTile(
                //     leading: CircleAvatar(
                //       backgroundColor: Colors.indigoAccent,
                //       child: Text('$3'),
                //       foregroundColor: Colors.white,
                //     ),
                //     title: Text('Tile n°$3'),
                //     subtitle: Text('SlidableDrawerDelegate'),
                //   ),
                // ),
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: Colors.blue,
                    icon: Icons.archive,
                    onTap: () => {},
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                    onTap: () => {},
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.black45,
                    icon: Icons.more_horiz,
                    onTap: () => {},
                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => {},
                  ),
                ],

                child: ListTile(
                title: Text(message['subject']),
                isThreeLine: true,
                trailing: Text('2'),
                 leading: CircleAvatar(
                   child: Text("P1"),
                 ),
                subtitle: Text(
                  message['body'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                         return MessageDetail();       
                    }));
                  },
              ),
                // key: ObjectKey(message['subject']), actionPane: null,
            );
        },
      ), 
    );
  }
}
