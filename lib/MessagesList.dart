// import 'package:flutter/material.dart';

// class _MessagesList extends StatefulWidget {

//   @override
//   Widget build(BuildContext context) {
//     var messages = const [];

//     return Scaffold(
//       appBar: AppBar(        
//         title: Text(widget.title),
//       ),
//       body:ListView.builder(
//         itemCount: 4,
//         // separatorBuilder: (Context, index) => Divider(),
//         itemBuilder: (BuildContext context, int index){
//           var message = messages[index];
//             return ListTile(
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
//             );
//         },
//       )
             
//     );
//   }
// }