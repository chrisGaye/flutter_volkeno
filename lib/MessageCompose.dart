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

   final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text('Compose New Message')
                  ),
                  body: SingleChildScrollView(
                    child: Form(
                    key: key,
                 child: Column(
                 // padding: EdgeInsets.all(16),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                       title: TextFormField(
                       validator: (value) => !value.contains('@') ? "Veuillez saisir un e-mail" : null,
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
                      validator: (value) {
                        int len = value.length;
                          if (len == 0) {
                            return "Suject ne peut pas etre null";
                          }else if(len < 4){
                            return "Il faut au moins 4 caractères pour Subject";
                          }
                          return null;
                        },
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
                   if(this.key.currentState.validate()){
                      this.key.currentState.save();
                   }
                  //  Message message = Message (subject, body);
                  
                  // Navigator.pop(context, "Ca marche");
               }),
            ),
          ],
         ),
       ),
      )
    );
  }
}
