import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String typeofdev = 'SENIOR DEVELOPER';
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            typeofdev += ' Full Stack';
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.grey[700],
              letterSpacing: 2.0
            ),
            ),
            SizedBox(height: 10.0),
            Text('M3A',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 30.0),
            Text('CURRENT WORK',
              style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text('$typeofdev',
             style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  
                ),
                SizedBox(width:10.0),
                Text(
                  'mohamed29w@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0
                  ),
                )
              ],
            )
          ],
        ),
        ) ,
    );
  }
}