import '../componentes/appBar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Frases extends StatefulWidget {
  @override
  _FrasesState createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {
  @override
  Widget build(BuildContext context) {
    List imagens = [
      "imagens/img_love_1.jpg",
      "imagens/img_love_2.jpg",
      "imagens/img_love_3.jpg",
      "imagens/img_love_4.jpg",
      "imagens/img_love_5.jpg",
      "imagens/img_love_6.jpg",
      "imagens/img_love_7.jpg",
    ];
    List frases = [
      "Eu te amo",
      "Você é incrível",
      "Que nosso amor seja infinito!",
      "Só quero você",
      "Você é única",
      "Você é foda",
      "Você é o amor da minha vida.",
    ];
    
    Random ran = Random();
    String imagemMomento = imagens[ran.nextInt(7)];
    String fraseMomento = frases[ran.nextInt(7)];

    return Scaffold(
      appBar: barra("Love Infinite"),
      body: Column(
        children: <Widget>[
          Image.asset(imagemMomento),
          Text(fraseMomento),
          RaisedButton(
            child: Text("Gerar"),
            onPressed: () {
              setState(() {
                print("Esta é a imagem " + imagemMomento);
                print("Esta é a frase " + fraseMomento);
              });
            },
          )
        ],
      ),
    );
  }
}
