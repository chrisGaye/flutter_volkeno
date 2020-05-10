import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


  Widget build(BuildContext context) {
//    var messages = const [
//     {
//         "subject": "My first message",
//         "body" : "Nous developpons une App using Flutter. Donc pour commencer...Nous developpons une App using Flutter. Donc pour commencer..."
//      },
//      {
//         "subject": "My second message",
//         "body" : "Veuillez lire ce message svp..."
//      },
//      {
//         "subject": "My 3rd message",
//         "body" : "Gaye vous dit bonjour et vous souhaite une bonne journée"
//      },
//      {
//         "subject": "My 4th message",
//         "body" : "Salut les amis, on va devoir tout recommencer d'ici la semaine prochaine"
//      },
//      {
//         "subject": "Nouvelle entrée avec JSON",
//         "body" : "Entrée avec json pose problème avec la methode initState() qui refuse...Du coup j'ai tout mis dans le main.dart"
//      },
//      {
//         "subject": "JSON",
//         "body" : "The serialize method..."
//      }
// ];
    return Center(
      child: Text('gaye'),
    );
    //  return Container(
    //    child: ListView.builder(
    //       itemCount: 6,
    //       // separatorBuilder: (Context, index) => Divider(),
    //       itemBuilder: (BuildContext context, int index){
    //         var message = messages[index];
    //           return Slidable(     
    //              actionPane: SlidableDrawerActionPane(),
    //               actionExtentRatio: 0.25,
    //               actions: <Widget>[
    //                 IconSlideAction(
    //                   caption: 'Archive',
    //                   color: Colors.blue,
    //                   icon: Icons.archive,
    //                   onTap: () => {},
    //                 ),
    //                 IconSlideAction(
    //                   caption: 'Share',
    //                   color: Colors.indigo,
    //                   icon: Icons.share,
    //                   onTap: () => {},
    //                 ),
    //               ],
    //               secondaryActions: <Widget>[
    //                 IconSlideAction(
    //                   caption: 'More',
    //                   color: Colors.black45,
    //                   icon: Icons.more_horiz,
    //                   onTap: () => {},
    //                 ),
    //                 IconSlideAction(
    //                   caption: 'Delete',
    //                   color: Colors.red,
    //                   icon: Icons.delete,
    //                   onTap: () => {},
    //                 ),
    //               ],

    //               child: ListTile(
    //               title: Text(message['subject']),
    //               isThreeLine: true,
    //               trailing: Text('2'),
    //                leading: CircleAvatar(
    //                  child: Text("P1"),
    //                ),
    //               subtitle: Text(
    //                 message['body'],
    //                 maxLines: 2,
    //                 overflow: TextOverflow.ellipsis,
    //                 ),
    //             ),
    //               // key: ObjectKey(message['subject']), actionPane: null,
    //           );
    //       },
    //     ),
    //  ); 
  }
