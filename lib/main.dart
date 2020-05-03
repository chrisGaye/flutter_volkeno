//Auteur : Amadou GAYE

// import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:json_annotation/json_annotation.dart';

// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:http/http.dart' as http;
import 'package:test_flutter/ComposeButton.dart';
import 'package:test_flutter/MessageDetail.dart';


// import 'MessageCompose.dart';

void main() => runApp(EmailApp());

class EmailApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData( primarySwatch: Colors.green,),
      home: MessageList(title: 'Email App OK oh'),
    );
  }
}

class MessageList extends StatefulWidget {
    
  final String title;
  
  MessageList({this.title});
  
  @override
  State<StatefulWidget> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {


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
      appBar: AppBar(        
        title: Text('Email App'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: (){
             //On peut faire une action ici 
          })
        ],
      ),
 
      body:ListView.builder(
        itemCount: 6,
        // separatorBuilder: (Context, index) => Divider(),
        itemBuilder: (BuildContext context, int index){
          var message = messages[index];
            return ListTile(
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
            );
        },
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Amadou GAYE'), 
              accountEmail: Text('gaye@volkeno.sn'),
              currentAccountPicture: CircleAvatar(
                  child: Text("G"),
                  // backgroundImage: NetworkImage(url),
                ),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  onTap: (){
                     showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text("Adding new account..."),
                          );
                     });
                  },
                  child: CircleAvatar(
                    child: Icon(Icons.add),
                 )
                )
              ],
              ),
            Padding(padding: 
              EdgeInsets.only(top: 20),
             ),
            ListTile(
               leading: Icon(Icons.inbox),
               title: Text("Inbox"),
               trailing: Chip(
                 label: Text("12", style: TextStyle(fontWeight: FontWeight.bold),)    
                 ),
            ),
            ListTile(
               leading: Icon(Icons.edit),
               title: Text("Draft"),
            ),
            ListTile(
               leading: Icon(Icons.archive),
               title: Text("Archive"),
            ),
            ListTile(
               leading: Icon(Icons.send),
               title: Text("Sent"),
            ),
             ListTile(
                leading: Icon(Icons.delete),
               title: Text("Trash"),
            ),
            Divider(),
            Expanded(
              child: Align(
                 alignment: FractionalOffset.bottomCenter,
                 child: ListTile(
                 leading: Icon(Icons.collections),
                 title: Text("Settings"),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton : ComposeButton(), 
    );
  }
}
