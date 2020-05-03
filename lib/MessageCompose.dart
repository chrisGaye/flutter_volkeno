import 'package:flutter/material.dart';

class MessageCompose extends StatefulWidget {
  @override
  _MessageComposeState createState() => _MessageComposeState();
}

class _MessageComposeState extends State<MessageCompose>{
  //Definir les variables
   String to  = "";
   String subject  = "";
   String body  = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compose New Message')
      ),
      body: SingleChildScrollView(
        child: Form(
        //  key: key,
         child: Column(
         // padding: EdgeInsets.all(16),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
               title: TextFormField(
               onSaved: (value) => to = value,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add),
                  labelText: "To",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold)
              ),  
            ),
            ), 
            ListTile(
               title:  TextFormField(
               onSaved: (value) => subject = value,
              decoration: InputDecoration(
                  labelText: "Subject",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold)
              ),  
             ),
            ),
           
            Divider(),
            ListTile(
              title: TextFormField(
              onSaved: (value) => body = value,
              decoration: InputDecoration(
                labelText: 'BODY', 
                labelStyle: TextStyle(fontWeight: FontWeight.bold)
              ),
              maxLines: 5,
             ),
            ),
            ListTile(
               title: RaisedButton(
                 child: Text("SEND"),
                 onPressed: () {
                  //  Message message = Message (subject, body);
                  // this.key.currentState.save();
                  Navigator.pop(context, "GAYE");
               }),
            ),
          ],
         ),
       ),
      )
    );
  }
}
