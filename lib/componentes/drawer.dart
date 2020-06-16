import 'package:flutter/material.dart';

class MeuDrawer extends StatefulWidget {
  @override
  _MeuDrawerState createState() => _MeuDrawerState();
}

class _MeuDrawerState extends State<MeuDrawer> {
  List<String> categorias = [
    "Android",
    "Java",
    "História",
    "Ciências",
    "Myths",
    "Typograpy"
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                border: Border.all(width: 2.0, color: Colors.transparent),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(155, 2, 10, .4),
                    Color.fromRGBO(166, 1, 14, .5),
                    Color.fromRGBO(177, 2, 10, .6),
                    Color.fromRGBO(188, 1, 14, .7),
                    Color.fromRGBO(199, 2, 10, .8),
                    Color.fromRGBO(200, 1, 14, .9),
                    Color.fromRGBO(199, 2, 10, .8),
                    Color.fromRGBO(188, 1, 14, .7),
                    Color.fromRGBO(177, 2, 10, .6),
                    Color.fromRGBO(166, 1, 14, .5),
                    Color.fromRGBO(155, 2, 10, .4),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            accountEmail: Text('borgesdiego00@gmail.com'),
            accountName: Text('Diego Borges'),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fsmt1-1.fna.fbcdn.net/v/t31.0-8/28827607_2036259446592322_5297503832005068958_o.jpg?_nc_cat=102&_nc_sid=09cbfe&_nc_eui2=AeFJ6HnI_c5qFvcxOU4P-RWZJVeWh1JzMRQlV5aHUnMxFEqPfa9TFc2eeBRJFCXgxB1kouvNp9xIpvrQKyldVyf5&_nc_ohc=-NAO7IeVbs0AX9uxPj-&_nc_ht=scontent.fsmt1-1.fna&oh=4da3b4c7ada0aa282a4c19e15fc2b0fb&oe=5F04DB89'),
            ),
          ),
          Divider(height: 5, color: Colors.transparent),
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("meus favoritos..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                GestureDetector();
              }),
        ],
      ),
    );
  }
}
