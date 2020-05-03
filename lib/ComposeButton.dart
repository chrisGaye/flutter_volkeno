import 'package:flutter/material.dart';

import 'MessageCompose.dart';

class ComposeButton extends StatelessWidget {
  String get intention => null;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton (    
          child: Icon(Icons.add),

          onPressed: () async{
            String intention  = await Navigator.push(context, 
            MaterialPageRoute(builder: (BuildContext context){
                       return MessageCompose();       
                  }));
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("Your message has been sent with $intention"),
              backgroundColor: Colors.green
            ));
          }, 
         
      );
      
  }
}