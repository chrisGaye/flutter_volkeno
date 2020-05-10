import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        );
  }
}