import 'package:flutter/material.dart';

class MessageCompose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compose New Message')
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(), TextField(), 
            TextField(
              decoration: InputDecoration(
                labelText: 'BODY', labelStyle: TextStyle()
              ),
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}