import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:romantico/screens/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Praticando Get',
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: HomePage(),
  ));
}
