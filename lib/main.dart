import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {

  int numDadoEsq = 1;
  int numDadoDir = 1;

  void RolarDados(){
    numDadoEsq = Random().nextInt(6)+1;
    numDadoDir = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    // Aqui abaixo centraliza tudo na tela
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    RolarDados();
                  });
                },
                child: Image.asset('imagens/dado$numDadoEsq.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    RolarDados();
                  });
                },
                child: Image.asset('imagens/dado$numDadoDir.png')),
          ),
        ],
      ),
    );
  }
}
