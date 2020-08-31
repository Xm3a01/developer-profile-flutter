import 'package:flutter/material.dart';
import 'package:new_demo/src/Quote.dart';
import 'package:new_demo/src/QuoteCard.dart';

void main() => runApp(
  MaterialApp(
    home: ListQuate(),
  )
);

class ListQuate extends StatefulWidget {
  @override
  _ListQuateState createState() => _ListQuateState();
}

class _ListQuateState extends State<ListQuate> {

  List<Quote> list = [
    Quote(author: 'Mohamed' , text: 'This my last chance to learn somethink or ...'),
    Quote(author: 'Mohamed' , text: 'This my last chance to learn somethink or ...'),
    Quote(author: 'Mohamed' , text: 'This my last chance to learn somethink or ...'),
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('List'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
       ),
       body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
            list.map((l) => QuoteCard(quote: l , delete:(){
              setState(() {
                list.remove(l);
              });
            })).toList()
        ),
    );
  }
}