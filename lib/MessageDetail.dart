import 'package:flutter/material.dart';
import 'package:test_flutter/MessageCompose.dart';

class MessageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Message Detail')),
       body: Center(child: Text('Ca marche Gaye continue bro on va voir C')),
     
      floatingActionButton : FloatingActionButton(    
          child: Icon(Icons.add),
          onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return MessageCompose();       
                  }));
                },
                            
      ), 
  
      );
  }
}