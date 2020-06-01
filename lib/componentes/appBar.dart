import 'package:flutter/material.dart';

Widget meuApp(String titulo) {
  return AppBar(
    centerTitle: true,
    title: Text(titulo),
    backgroundColor: Colors.red[300],
  );
}
