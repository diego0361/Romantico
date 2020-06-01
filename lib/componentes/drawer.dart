import 'package:flutter/material.dart';

Widget meuDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Text(
            'Cabeçalho do Drawer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Mensagens'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Perfil'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('News Paper'),
        ),
      ],
    ),
  );
}
