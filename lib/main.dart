import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QoteList(),
  ));
}

class  QoteList extends StatefulWidget {
  @override
  _QoteListState createState() => _QoteListState();
}

class _QoteListState extends State<QoteList> {
  List<String> quotes = [
    'first quote' ,
    'second quote',
    'third quote'
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('My qotes'),
          centerTitle: true,
        ),
        body: Column(
          children: quotes.map((quote) => Text(quote)) . toList(),
        ),
      );
  }
}

