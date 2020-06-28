import 'package:flutter/material.dart';
import 'package:romantico/componentes/appBar.dart';

class ImagensFofas extends StatefulWidget {
  @override
  _ImagensFofasState createState() => _ImagensFofasState();
}

class _ImagensFofasState extends State<ImagensFofas> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: barra("Imagens Românticas"),
    );
  }
}