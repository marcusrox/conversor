import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?key=82b5c8cd";

void main() async {
  
  print(await getData());
  runApp(MaterialApp(home: Home()));
} 

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _texto = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("\$ Conversor \$"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text("teste", style: TextStyle(color: Colors.white, fontSize: 18.0),)
        ],),
        ),
    );
  }
}