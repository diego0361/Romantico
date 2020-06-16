import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Gifts extends StatefulWidget {
  @override
  _GiftsState createState() => _GiftsState();
}

class _GiftsState extends State<Gifts> {
  String _search;

  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;
    if (_search == null)
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=Y7ALMGOU5SvfFmAQZOyAvRUPkTvyEdQE&limit=25&rating=G");
    else
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=Y7ALMGOU5SvfFmAQZOyAvRUPkTvyEdQE&q=$_search&limit=25&offset=$_offset&rating=G&lang=pt");

    return json.decode(response.body);
  }

  @override
  void initState(){
    super.initState();

    _getGifs().then((map) {
      print(map);
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Image.network('https://developers.giphy.com/static/img/dev-logo-lg.7404c00322a8.gif'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(120, 2, 10, .4),
    );
  }
}
