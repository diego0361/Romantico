import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share(_gifData["images"]["fixed_hright"]["url"]);
              })
        ],
      ),
      body: Center(
        child: Image.network(
          _gifData["images"]["fixed_height"]["url"],
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
