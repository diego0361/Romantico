import 'package:flutter/material.dart';
import 'package:romantico/componentes/Barra.dart';
import 'package:romantico/componentes/drawer.dart';
import 'package:romantico/screens/frases_romanticas.dart';
import 'package:romantico/screens/gifs.dart';
import 'package:romantico/screens/imagens_fofas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: barra("Loved"),
        drawer: MeuDrawer(),
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Frases()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Container(
                      color: Colors.green[300],
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'imagens/romance.jpg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: Text("Frases Românticas",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImagensFofas()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Container(
                      color: Colors.green[300],
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'imagens/r1.jpg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: Text("Imagens Fofas",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gifts()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Container(
                      color: Colors.green[300],
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'imagens/r2.jpg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: Text("Gifs",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
