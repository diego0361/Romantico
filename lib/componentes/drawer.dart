import 'package:flutter/material.dart';

Widget meuDrawer() {
  return Drawer(
    child: GestureDetector(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('imagens/romance.jpg'),
                    fit: BoxFit.cover)),
            accountName: Text('Diego'),
            accountEmail: Text('borgesdiego00@gmail.com'),
            currentAccountPicture: CircleAvatar(
                radius: 100.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fops3-1.fna.fbcdn.net/v/t31.0-8/28827607_2036259446592322_5297503832005068958_o.jpg?_nc_cat=102&_nc_sid=09cbfe&_nc_eui2=AeFJ6HnI_c5qFvcxOU4P-RWZJVeWh1JzMRQlV5aHUnMxFEqPfa9TFc2eeBRJFCXgxB1kouvNp9xIpvrQKyldVyf5&_nc_ohc=FSThmkaK8pIAX8Y1jDE&_nc_ht=scontent.fops3-1.fna&oh=7608d8bb84a1800b90f4b9508115c039&oe=5EFCF289')),
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
    ),
  );
}
